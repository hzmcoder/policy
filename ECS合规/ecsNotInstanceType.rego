package accurics

##ruleName ecsNotInstanceType
##policyType alicloud
##resourceType alicloud_instance

ecsNotInstanceType[ecs.id] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  not config.instance_type
}

