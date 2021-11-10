package accurics

##ruleName cdnScopeNotEffectiveRange
##policyType alicloud
##resourceType alicloud_cdn_domain_new

cdnScopeNotEffectiveRange[input.alicloud_cdn_domain_new[_].id]{
  not cdnScopeEffectiveRange
}

cdnScopeEffectiveRange {
  range := {"domestic","overseas","global"}
  cdn := input.alicloud_cdn_domain_new[_]
  config := cdn.config
  some i
  config.scope == range[i]
}
