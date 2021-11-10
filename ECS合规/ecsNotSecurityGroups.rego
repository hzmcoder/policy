package accurics

##ruleName ecsNotSecurityGroups
##policyType alicloud
##resourceType alicloud_instance

ecsNotSecurityGroups[ecs.id] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  not config.security_groups
}
