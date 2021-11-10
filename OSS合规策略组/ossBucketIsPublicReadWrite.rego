package accurics

##ruleName ossBucketIsPublicReadWrite
##resourceType alicloud_oss_bucket
##policyType alicloud

ossBucketIsPublicReadWrite[input.alicloud_oss_bucket[_].id]{
	input.alicloud_oss_bucket[_].config.acl=="public-read-write"
}

