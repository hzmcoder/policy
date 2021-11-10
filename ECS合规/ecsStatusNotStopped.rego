package accurics

##ruleName ecsStatusNotStopped
##policyType alicloud
##resourceType alicloud_instance

ecsStatusNotStopped[ecs.id] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  config.status == "Stopped"
}

