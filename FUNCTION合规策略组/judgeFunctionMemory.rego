package accurics

##ruleName judgeFunctionMemory
##resourceType alicloud_fc_function
##policyType alicloud


judgeFunctionMemory[input.alicloud_fc_function[_].id]{
   functionMemoryStr := input.alicloud_fc_function[_].config.memory_size
    to_number(functionMemoryStr) <= 512
}