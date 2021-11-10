package accurics

##ruleName judgeFcServiceName
##resourceType alicloud_fc_service
##policyType alicloud


fcServiceNameTrue[input.alicloud_fc_service[_].id]{
  fcServiceName := input.alicloud_fc_service[_].config.name
  not re_match("^[a-zA-Z_][a-zA-Z0-9_-]{0,127}$", fcServiceName)
}