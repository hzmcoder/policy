package accurics

##ruleName MongoDBNotVPC
##policyType alicloud
##resourceType alicloud_mongodb_instance

MongoDBNotVPC[input.alicloud_mongodb_instance[_].id] {
	 mongodb := input.alicloud_mongodb_instance[_]
  config := mongodb.config
  not config.vswitch_id
}
