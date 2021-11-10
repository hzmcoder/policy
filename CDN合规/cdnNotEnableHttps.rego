package accurics

##ruleName cdnNotEnableHttps
##policyType alicloud
##resourceType alicloud_cdn_domain_new

cdnNotEnableHttps[cdn.id]{
  cdn := input.alicloud_cdn_domain_new[_]
  config := cdn.config
  certficateConfig := config.certificate_config[_]
  certficateConfig.server_certificate_status == "on"
  not certficateConfig.server_certificate
}

cdnNotEnableHttps[cdn.id]{
    cdn := input.alicloud_cdn_domain_new[_]
    config := cdn.config
    certficateConfig := config.certificate_config[_]
    certficateConfig.server_certificate_status == "on"
    not certficateConfig.private_key
}

