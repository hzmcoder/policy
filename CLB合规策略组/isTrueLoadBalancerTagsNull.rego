package accurics

##ruleName isTrueLoadBalancerTagsNull
##resourceType alicloud_slb_load_balancer
##policyType alicloud

isTrueLoadBalancerTagsNull[input.alicloud_slb_load_balancer[_].id]{
input.alicloud_slb_load_balancer[_].config.tags == ""
}


