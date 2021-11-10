package accurics

##ruleName CDNNotContainLetterNumberHorizontal
##policyType alicloud
##resourceType alicloud_cdn_domain_new

pattern := "^[a-zA-Z0-9][-a-zA-Z0-9]{0,62}([.][a-zA-Z0-9][-a-zA-Z0-9]{0,62})+$"

CDNNotContainLetterNumberHorizontal[cdn.id] {
    cdn := input.alicloud_cdn_domain_new[_]
    config := cdn.config
    not re_match(pattern,config.domain_name)
}