package accurics

##ruleName cdnNotFunctionArgs
##policyType alicloud
##resourceType alicloud_cdn_domain_config

cdnNotFunctionArgs[cdn.id]{
  cdn := input.alicloud_cdn_domain_config[_]
  config := cdn.config
  functionArgs := config.function_args[_]
  not functionArgs.arg_name
}

cdnNotFunctionArgs[cdn.id]{
    cdn := input.alicloud_cdn_domain_config[_]
    config := cdn.config
    functionArgs := config.function_args[_]
    not functionArgs.arg_value
}