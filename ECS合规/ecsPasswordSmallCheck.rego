package accurics

##ruleName ecsPasswordSmallCheck
##policyType alicloud
##resourceType alicloud_instance



ecsPasswordSmallCheck[ecs.config.password] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  not re_match(".*[a-z].*",config.password)
  
}

