package accurics

##ruleName isTrueLoadBalancerPaymentType
##resourceType alicloud_slb_load_balancer
##policyType alicloud

isTrueLoadBalancerPaymentType[input.alicloud_slb_load_balancer[_].id]{
input.alicloud_slb_load_balancer[_].config.payment_type != "PayAsYouGo"
}



