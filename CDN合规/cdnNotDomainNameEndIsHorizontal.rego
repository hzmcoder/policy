package accurics

##ruleName cdnNotDomainNameEndIsHorizontal
##policyType alicloud
##resourceType alicloud_cdn_domain_new

pattern := "^-|-$"

cdnNotDomainNameEndIsHorizontal[cdn.id]{
    cdn := input.alicloud_cdn_domain_new[_]
    config := cdn.config
    re_match(pattern, config.domain_name)
}

