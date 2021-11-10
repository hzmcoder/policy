package accurics

##ruleName ossBucketIsNumber
##resourceType alicloud_oss_bucket
##policyType alicloud

ossBucketIsNumber[input.alicloud_oss_bucket[_].id]{
 a := input.alicloud_oss_bucket[_].config.bucket
	re_match(".*[0-9].*", a)
}

