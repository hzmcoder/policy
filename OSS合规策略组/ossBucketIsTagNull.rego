package accurics

##ruleName ossBucketIsTagNull
##resourceType alicloud_oss_bucket
##policyType alicloud

ossBucketIsTagNull[input.alicloud_oss_bucket[_].id]{
	input.alicloud_oss_bucket[_].config.tag == ""
}