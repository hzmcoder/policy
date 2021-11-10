package accurics

##ruleName eipNotInstanceId
##policyType alicloud
##resourceType alicloud_eip_association


eipNotInstanceId[input.alicloud_eip_association[_].id] {
	not eipCheck
}
eipCheck {
	eip := input.alicloud_eip_association[_]
  config := eip.config
  config.instance_id != null
}
