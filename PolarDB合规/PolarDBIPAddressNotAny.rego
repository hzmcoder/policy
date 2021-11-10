package accurics

##ruleName PolarDBIPAddressNotAny
##policyType alicloud
##resourceType alicloud_polardb_cluster

PolarDBIPAddressNotAny[input.alicloud_polardb_cluster[_].id] {
  polardb := input.alicloud_polardb_cluster[_]
  anyAddress := {"0.0.0.0","0.0.0.0/0"}
  config := polardb.config
  securityIps := config.security_ips
  some i,j
  anyAddress[i] == securityIps[j]
}