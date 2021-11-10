package accurics

##ruleName cdnNotDomainNameIsOneToSixtyThree
##policyType alicloud
##resourceType alicloud_cdn_domain_new

cdnNotDomainNameIsOneToSixtyThree[input.alicloud_cdn_domain_new[_].id]{
	not cdnDomainNameIsOneToSixtyThree
}

cdnDomainNameIsOneToSixtyThree{
    cdnDomain := input.alicloud_cdn_domain_new[_]
    config := cdnDomain.config
    len := count(config.domain_name)
    len >= 1
    len <= 63
}

