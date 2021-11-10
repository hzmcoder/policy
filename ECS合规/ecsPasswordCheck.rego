package accurics

##ruleName ecsPasswordCheck
##policyType alicloud
##resourceType alicloud_instance



ecsPasswordCheck[ecs.config.password] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  not re_match(".*[A-Z].*",config.password)
  
}

