package accurics

##ruleName isKeyTypeWithSymmetrical1
##resourceType alicloud_kms_key
##policyType alicloud



isKeyTypeWithSymmetrical{
  key_spec := {"Aliyun_SM4","Aliyun_AES_256"}
   kms_key := input.alicloud_kms_key[_]
   some i
   kms_key.config.key_spec == key_spec[i]
}

isKeyTypeWithSymmetrical1[input.alicloud_kms_key[_].id]{
   not isKeyTypeWithSymmetrical
}
