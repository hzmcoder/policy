package accurics

##ruleName isServiceBeforeFunction
##policyType alicloud
##resourceType alicloud_fc_function

isServiceBeforeFunction[input.alicloud_fc_function[_].id]{
    service := input.alicloud_fc_service
    not service
}