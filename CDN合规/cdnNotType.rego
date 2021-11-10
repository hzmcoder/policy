package accurics

##ruleName cdnNotType
##policyType alicloud
##resourceType alicloud_cdn_domain_new

cdnNotType[cdn.id]{
    cdn := input.alicloud_cdn_domain_new[_]
    config := cdn.config
    not config.cdn_type
}

