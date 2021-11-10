package accurics

##ruleName MongoDBNameLenError
##policyType alicloud
##resourceType alicloud_mongodb_instance

MongoDBNameLenError[input.alicloud_mongodb_instance[_].id] {
	not MongoDBNameLenIsRight
}

MongoDBNameLenIsRight {
  mongodb := input.alicloud_mongodb_instance[_]
  config := mongodb.config
  len := count(config.name)
  len >= 2
  len <= 256
}