package accurics

##ruleName vpcNotDescription
##policyType alicloud
##resourceType alicloud_vpc

vpcNotDescription[vpc.id] {
	vpc := input.alicloud_vpc[_]
  config := vpc.config
  not config.description
}
