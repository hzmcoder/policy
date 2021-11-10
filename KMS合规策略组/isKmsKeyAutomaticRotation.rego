package accurics

##ruleName isKmsKeyAutomaticRotation 
##resourceType alicloud_kms_key
##policyType alicloud

isKmsKeyAutomaticRotation[input.alicloud_kms_key[_].id]{
   kms_key := input.alicloud_kms_key[_]
   not kms_key.config.automatic_rotation == "Enabled"
}