package accurics

##ruleName ecsPasswordNumberCheck
##policyType alicloud
##resourceType alicloud_instance



ecsPasswordNumberCheck[ecs.config.password] {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  not re_match(".*[0-9].*",config.password)
  
}

