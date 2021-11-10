package accurics

##ruleName MongoDBIpAddressNotAny
##policyType alicloud
##resourceType alicloud_mongodb_instance

MongoDBIpAddressNotAny[input.alicloud_mongodb_instance[_].id] {
  mongodb := input.alicloud_mongodb_instance[_]
  config := mongodb.config
  anyAddress := {"0.0.0.0","0.0.0.0/0"}
  securityIpList := config.security_ip_list
  some i,j
  anyAddress[i] == securityIpList[j]
}