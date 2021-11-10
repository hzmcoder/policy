package accurics

##ruleName queueIsAutoDelete
##resourceType alicloud_amqp_queue
##policyType alicloud

queueIsAutoDelete[input.alicloud_amqp_queue[_].id]{
	input.alicloud_amqp_queue[_].config.auto_delete_state==false
}
