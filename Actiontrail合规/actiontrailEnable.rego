package accurics

##ruleName actiontrailEnable
##policyType alicloud
##resourceType alicloud_actiontrail_trail

actiontrailEnable[actiontrail.id] {
  actiontrail := input.alicloud_actiontrail_trail[_]
  config := actiontrail.config
  not config.status == "Enable"
}