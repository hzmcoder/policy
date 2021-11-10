package accurics

##ruleName isDbClusterCategoryNull
##resourceType alicloud_adb_cluster
##policyType alicloud

isDbClusterCategoryNull[input.alicloud_adb_cluster[_].id]{
	input.alicloud_adb_cluster[_].config.db_cluster_category == ""
}
