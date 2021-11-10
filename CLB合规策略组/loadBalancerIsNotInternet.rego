package accurics

##ruleName loadBalancerIsNotInternet
##resourceType alicloud_slb_load_balancer
##policyType alicloud

loadBalancerIsNotInternet[input.alicloud_slb_load_balancer[_].id]{
	input.alicloud_slb_load_balancer[_].config.address_type != "internet"
}