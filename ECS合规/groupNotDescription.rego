package accurics

##ruleName groupNotDescription
##policyType alicloud
##resourceType alicloud_security_group_rule

groupNotDescription[rule.id] {
	rule := input.alicloud_security_group_rule[_]
  config := rule.config
  not config.description
}
