package accurics

##ruleName judgeRdsInstanceStorage
##policyType alicloud
##resourceType alicloud_db_instance

judgeRdsInstanceStorage[input.alicloud_db_instance[_].id]{
    rdsInstanceStorageStr := input.alicloud_db_instance[_].config.instance_storage
    not to_number(rdsInstanceStorageStr) <= 100
}
