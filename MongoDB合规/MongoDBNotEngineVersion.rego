package accurics

##ruleName MongoDBNotEngineVersion
##policyType alicloud
##resourceType alicloud_mongodb_instance

MongoDBNotEngineVersion[input.alicloud_mongodb_instance[_].id] {
	not MongoDBIsEngineVersion
}

MongoDBIsEngineVersion {
  mongodb := input.alicloud_mongodb_instance[_]
  engineVersion := {"3.4","4.0","4.2"}
  config := mongodb.config
  some i
  config.engine_version == engineVersion[i]
}