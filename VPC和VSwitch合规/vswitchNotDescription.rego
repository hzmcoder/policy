package accurics

##ruleName vswitchNotDescription
##policyType alicloud
##resourceType alicloud_vswitch

vswitchNotDescription[vswitch.id] {
	vswitch := input.alicloud_vswitch[_]
  config := vswitch.config
  not config.description
}
