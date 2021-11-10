package accurics

##ruleName actiontrailNotEnableAll
##policyType alicloud
##resourceType alicloud_actiontrail_trail

actiontrailNotEnableAll[actiontrail.id]{
  actiontrail := input.alicloud_actiontrail_trail[_]
  config := actiontrail.config
  not config.event_rw == "All"
}

actiontrailNotEnableAll[actiontrail.id]{
  actiontrail := input.alicloud_actiontrail_trail[_]
  config := actiontrail.config
  not config.trail_region == "All"
}
