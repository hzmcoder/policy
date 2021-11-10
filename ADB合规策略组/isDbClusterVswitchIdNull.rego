package accurics

##ruleName isDbClusterVswitchIdNull
##resourceType alicloud_adb_cluster
##policyType alicloud

isDbClusterVswitchIdNull[input.alicloud_adb_cluster[_].id]{
	input.alicloud_adb_cluster[_].config.vswitch_id == ""
}
