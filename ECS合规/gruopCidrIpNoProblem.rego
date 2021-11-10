package accurics

##ruleName gruopCidrIpNoProblem
##policyType alicloud
##resourceType alicloud_security_group_rule

gruopCidrIpNoProblem[rule.id] {
	rule := input.alicloud_security_group_rule[_]
  config := rule.config
  config.cidr_ip != "0.0.0.0/0"
}
