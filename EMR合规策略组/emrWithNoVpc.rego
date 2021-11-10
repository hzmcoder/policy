package accurics

##ruleName emrWithNoVpc
##policyType alicloud
##resourceType alicloud_emr_cluster

emrWithNoVpc[input.alicloud_emr_cluster[_].id]{
	cluster := input.alicloud_emr_cluster[_]
    not cluster.config.vswitch_id
}