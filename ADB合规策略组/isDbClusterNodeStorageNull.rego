package accurics

##ruleName isDbClusterNodeStorageNull
##resourceType alicloud_adb_cluster
##policyType alicloud

isDbClusterNodeStorageNull[input.alicloud_adb_cluster[_].id]{
	input.alicloud_adb_cluster[_].config.db_node_storage == ""
}
