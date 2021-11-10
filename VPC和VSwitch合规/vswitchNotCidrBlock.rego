package accurics

##ruleName vswitchNotCidrBlock
##policyType alicloud
##resourceType alicloud_vswitch

vswitchNotCidrBlock[vswitch.id] {
	vswitch := input.alicloud_vswitch[_]
  config := vswitch.config
  not config.cidr_block
}
