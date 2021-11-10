package accurics

##ruleName rdsWithNoVpc
##policyType alicloud
##resourceType alicloud_db_instance

emrWithNoVpc[input.alicloud_db_instance[_].id]{
		rdsInstance := input.alicloud_db_instance[_]
    not rdsInstance.config.vswitch_id
}