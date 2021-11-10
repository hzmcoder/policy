package accurics

##ruleName AdbClusterTagsIsNull
##resourceType alicloud_adb_cluster
##policyType alicloud

AdbClusterTagsIsNull[input.alicloud_adb_cluster[_].id]{
	input.alicloud_adb_cluster[_].config.tags == ""
}