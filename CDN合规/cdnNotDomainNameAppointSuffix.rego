package accurics

##ruleName cdnNotDomainNameAppointSuffix
##policyType alicloud
##resourceType alicloud_cdn_domain_new

pattern := ".*.sh$|.*.tel$"

cdnNotDomainNameAppointSuffix[cdn.id]{
    cdn := input.alicloud_cdn_domain_new[_]
    config := cdn.config
    re_match(pattern, config.domain_name)
}

