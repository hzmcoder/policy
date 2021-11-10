package accurics

##ruleName isNotPostpaid
##resourceType alicloud_adb_cluster
##policyType alicloud

isNotPostpaid[input.alicloud_adb_cluster[_].id]{
	input.alicloud_adb_cluster[_].config.pay_type != "PostPaid"
}