package accurics

##ruleName sslNotLenOneToSixtyThree
##policyType alicloud
##resourceType alicloud_ssl_certificates_service_certificate

sslNotLenOneToSixtyThree[input.alicloud_ssl_certificates_service_certificate[_].id]{
    not sslLenOneToSixtyThree
}

sslLenOneToSixtyThree {
    ssl := input.alicloud_ssl_certificates_service_certificate[_]
    config := ssl.config
    len := count(config.certificate_name)
    len >= 1
    len <= 63
}