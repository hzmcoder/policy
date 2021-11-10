package accurics

##ruleName cdnNotDomainNameHorizontalLocatedThreeFour
##policyType alicloud
##resourceType alicloud_cdn_domain_new

pattern := "^[a-zA-Z0-9]{2}--"

cdnNotDomainNameHorizontalLocatedThreeFour[cdn.id]{
    cdn := input.alicloud_cdn_domain_new[_]
    config := cdn.config
    re_match(pattern, config.domain_name)
}

