package accurics

##ruleName isTrueLoadBalancerSpecNull
##resourceType alicloud_slb_load_balancer
##policyType alicloud

isTrueLoadBalancerSpecNull[input.alicloud_slb_load_balancer[_].id]{
input.alicloud_slb_load_balancer[_].config.load_balancer_spec == ""
}


