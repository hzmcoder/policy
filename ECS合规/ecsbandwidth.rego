package accurics

##ruleName ecsbandwidth
##policyType alicloud
##resourceType alicloud_instance

ecsbandwidth[input.alicloud_instance[_].id]{
	not ecsbandwidthCheck
}

ecsbandwidthCheck {
	ecs := input.alicloud_instance[_]
  config := ecs.config
  flag := config.internet_max_bandwidth_out
  flag <= 100
  flag >= 0
}

