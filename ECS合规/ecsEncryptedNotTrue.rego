package accurics

##ruleName ecsEncryptedNotTrue
##policyType alicloud
##resourceType alicloud_instance

ecsEncryptedNotTrue[ecs.id] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  config.data_disks.encrypted != true
}

