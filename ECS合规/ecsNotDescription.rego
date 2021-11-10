package accurics

##ruleName ecsNotDescription
##policyType alicloud
##resourceType alicloud_instance

ecsNotDescription[ecs.id] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  not config.description
}
