package accurics

##ruleName cdnNotEffectiveType
##policyType alicloud
##resourceType alicloud_cdn_domain_new

cdnNotEffectiveType{
  not cdnEffectiveType
}

cdnEffectiveType {
  type := {"web","download","video"}

  cdn := input.alicloud_cdn_domain_new[_]
  config := cdn.config
  some i
  config.cdn_type == type[i]
}
