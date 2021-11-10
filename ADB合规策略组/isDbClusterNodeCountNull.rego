package accurics

##ruleName isDbClusterNodeCountNull
##resourceType alicloud_adb_cluster
##policyType alicloud

isDbClusterNodeCountNull[input.alicloud_adb_cluster[_].id]{
	input.alicloud_adb_cluster[_].config.db_node_count == ""
}
