package accurics

##ruleName ecsPassword
##policyType alicloud
##resourceType alicloud_instance

ecsPassword[input.alicloud_instance[_].id]{
	not ecsPasswordCheck
}

ecsPasswordCheck {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  flag := count(config.password)
  flag <= 30
  flag >= 8
}

