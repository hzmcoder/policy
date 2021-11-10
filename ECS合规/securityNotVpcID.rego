package accurics

##ruleName securityNotVpcID
##policyType alicloud
##resourceType alicloud_security_group

securityNotVpcID[security_group.id] {
	security_group := input.alicloud_security_group[_]
  config := security_group.config
  not config.vpc_id
}
