package accurics

##ruleName emrWithNoSecurityGroup
##policyType alicloud
##resourceType alicloud_emr_cluster

emrWithNoSecurity_group[input.alicloud_emr_cluster[_].id]{
	cluster := input.alicloud_emr_cluster[_]
    not cluster.config.security_group_id
}