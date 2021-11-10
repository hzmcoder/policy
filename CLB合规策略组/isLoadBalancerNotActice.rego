package accurics

##ruleName isLoadBalancerNotActice
##resourceType alicloud_slb_load_balancer
##policyType alicloud

isLoadBalancerNotActice[input.alicloud_slb_load_balancer[_].id]{
input.alicloud_slb_load_balancer[_].config.status != "actice"
}


