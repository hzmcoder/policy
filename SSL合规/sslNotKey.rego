package accurics

##ruleName sslNotKey
##policyType alicloud
##resourceType alicloud_ssl_certificates_service_certificate

sslNotKey[ssl.id]{
    ssl := input.alicloud_ssl_certificates_service_certificate[_]
    config := ssl.config
    not config.key
}
