package accurics

##ruleName isDbClusterNodeClassnull
##resourceType alicloud_adb_cluster
##policyType alicloud

isDbClusterNodeClassnull[input.alicloud_adb_cluster[_].id]{
	input.alicloud_adb_cluster[_].config.db_node_class == ""
}
