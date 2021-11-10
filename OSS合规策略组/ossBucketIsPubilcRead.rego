package accurics

##ruleName ossBucketIsPubilcRead
##resourceType alicloud_oss_bucket
##policyType alicloud

ossBucketIsPubilcRead[input.alicloud_oss_bucket[_].id]{
  input.alicloud_oss_bucket[_].config.acl=="public-read"
}