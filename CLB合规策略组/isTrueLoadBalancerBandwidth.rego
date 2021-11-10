package accurics

##ruleName isTrueLoadBalancerBandwidth
##resourceType alicloud_slb_load_balancer
##policyType alicloud

isTrueLoadBalancerBandwidth[input.alicloud_slb_load_balancer[_].id]{
a := input.alicloud_slb_load_balancer[_].config.bandwidth 
 a < 1
}
isTrueLoadBalancerBandwidth[input.alicloud_slb_load_balancer[_].id]{
a := input.alicloud_slb_load_balancer[_].config.bandwidth 
 a > 1000
}



