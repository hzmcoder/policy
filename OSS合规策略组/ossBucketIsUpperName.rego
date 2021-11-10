package accurics

##ruleName ossBucketIsUpperName
##resourceType alicloud_oss_bucket
##policyType alicloud

ossBucketIsUpperName[input.alicloud_oss_bucket[_].id]{
 a := input.alicloud_oss_bucket[_].config.bucket
	re_match(".*[A-Z].*", a)
}

