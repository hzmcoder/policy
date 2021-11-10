package accurics

##ruleName gruopPortRangeNoProblem
##policyType alicloud
##resourceType alicloud_security_group_rule

gruopPortRangeNoProblem[rule.id] {
	rule := input.alicloud_security_group_rule[_]
  config := rule.config
  config.port_range != "1/65535"
}
