package accurics

##ruleName isTrueSlbListener
##resourceType alicloud_slb_listener
##policyType alicloud

isTrueSlbListener[input.alicloud_slb_listener[_].id]{
	input.alicloud_slb_listener[_].config.backend_port != 8080
  
}
isTrueSlbListener[input.alicloud_slb_listener[_].id]{
	input.alicloud_slb_listener[_].config.frontend_port != 80
}
isTrueSlbListener[input.alicloud_slb_listener[_].id]{
	input.alicloud_slb_listener[_].config.protocol != "https"
}



