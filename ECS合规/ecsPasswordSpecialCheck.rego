package accurics

##ruleName ecsPasswordSpecialCheck
##policyType alicloud
##resourceType alicloud_instance



ecsPasswordSpecialCheck[ecs.config.password] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  re_match(".*[#?!@$%^&*-].*",config.password)
  
}

