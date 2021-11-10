package accurics

##ruleName ecsNotHelped
##policyType alicloud
##resourceType alicloud_instance

ecsNotHelped[ecs.id] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  config.deletion_protection != true
}

