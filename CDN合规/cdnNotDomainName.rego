package accurics

##ruleName cdnNotDomainName
##policyType alicloud
##resourceType alicloud_cdn_domain_new

cdnNotDomainName[cdnDomain.id]{
    cdnDomain := input.alicloud_cdn_domain_new[_]
    config := cdnDomain.config
    not config.domain_name
}