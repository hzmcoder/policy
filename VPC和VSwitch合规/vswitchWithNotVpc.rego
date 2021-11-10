package accurics

##ruleName vswitchWithNotVpc
##policyType alicloud
##resourceType alicloud_vswitch

vswitchWithNotVpc[vswitch.id] {
	vswitch := input.alicloud_vswitch[_]
  config := vswitch.config
  not config.vpc_id
}
