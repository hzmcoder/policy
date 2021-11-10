package accurics

##ruleName judgeFunctionName
##policyType alicloud
##resourceType alicloud_fc_function

judgeFunctionName[input.alicloud_fc_function[_].id]{
  functionNameStr := input.alicloud_fc_function[_].config.name
  not  re_match("^[a-zA-Z_][a-zA-Z0-9_-]{0,62}$", functionNameStr)
}