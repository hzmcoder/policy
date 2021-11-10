package accurics

##ruleName isLoadBalancerActice
##resourceType alicloud_slb_load_balancer
##policyType alicloud

isLoadBalancerActice[input.alicloud_slb_load_balancer[_].id]{
input.alicloud_slb_load_balancer[_].config.status == "actice"
}


