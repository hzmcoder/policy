package accurics

##ruleName judgeInstanceChargeType
##policyType alicloud
##resourceType alicloud_db_instance

judgeInstanceChargeType[input.alicloud_db_instance[_].id]{
   instanceChargeType :=      input.alicloud_db_instance[_].config.instance_charge_type
   not instanceChargeType == "Postpaid"
}