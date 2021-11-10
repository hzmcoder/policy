package accurics

##ruleName vswitchNotZoneid
##policyType alicloud
##resourceType alicloud_vswitch

vswitchNotZoneid[vswitch.id] {
	vswitch := input.alicloud_vswitch[_]
  config := vswitch.config
  not config.zone_id
}
