package accurics

##ruleName judgeRotationInterval
##resourceType alicloud_kms_key
##policyType alicloud

rotationIntervalStr := input.alicloud_kms_key[_].config.rotation_interval

timeType() = "s"{
    endswith(rotationIntervalStr, "s")
}else = "m"{
   endswith(rotationIntervalStr, "m")
}else = "h"{
   endswith(rotationIntervalStr, "h")
}else = "d"{
   endswith(rotationIntervalStr, "d")
}

getRotationIntervalInt(str) = rotationIntervalInt{
   endWith := indexof(rotationIntervalStr, str)
   rotationInterval := substring(rotationIntervalStr, 0, endWith)
   rotationIntervalInt := to_number(rotationInterval)
}

judgeRotationIntervalFunction(str){
   str == "s"
   getRotationIntervalInt(str)/86400 > 90 
   getRotationIntervalInt(str)/86400 <= 730 
}else{
   str == "m"
   getRotationIntervalInt(str)/1440 > 90
   getRotationIntervalInt(str)/1440 <= 730
}else{
   str == "h"
   getRotationIntervalInt(str)/24 > 90
   getRotationIntervalInt(str)/24 <= 730
}else{
   str == "d"
   getRotationIntervalInt(str) > 90
   getRotationIntervalInt(str) <= 730
}

judgeRotationInterval[input.alicloud_kms_key[_].id]{
   str := timeType
   not judgeRotationIntervalFunction(str)
}