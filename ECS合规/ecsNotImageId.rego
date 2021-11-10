package accurics

##ruleName ecsNotImageId
##policyType alicloud
##resourceType alicloud_instance

ecsNotImageId[ecs.id] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  not config.image_id
}
