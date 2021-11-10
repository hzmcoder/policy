package accurics

##ruleName loadBalancerIsNameTrue
##resourceType alicloud_slb_load_balancer
##policyType alicloud

loadBalancerIsNameTrue[input.alicloud_slb_load_balancer[_].id]{
  a := input.alicloud_slb_load_balancer[_].config.load_balancer_name
	not re_match("^[A-Za-z1-9-]{0,80}$", a)
}
