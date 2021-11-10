package accurics

##ruleName functionWithNoLog
##resourceType alicloud_fc_service
##policyType alicloud


functionWithLog[input.alicloud_fc_service[_].id]{
   logConfig := input.alicloud_fc_service[_].config
   not logConfig
}