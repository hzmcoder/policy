package accurics

##ruleName cdnNotConfigName
##policyType alicloud
##resourceType alicloud_cdn_domain_config

cdnNotConfigName[cdn.id]{
    cdn := input.alicloud_cdn_domain_config[_]
    config := cdn.config
    not config.function_name
}
