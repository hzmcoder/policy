package accurics

##ruleName eipNotDescription
##policyType alicloud
##resourceType alicloud_eip

eipNotDescription[eip.id] {
	eip := input.alicloud_eip[_]
  config := eip.config
  not config.description
}
