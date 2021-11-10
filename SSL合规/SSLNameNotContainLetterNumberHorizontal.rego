package accurics

##ruleName SSLNameNotContainLetterNumberHorizontal
##policyType alicloud
##resourceType alicloud_ssl_certificates_service_certificate

pattern := "^[a-zA-Z0-9]{1,63}$"

SSLNameNotContainLetterNumberHorizontal[ssl.id] {
    ssl := input.alicloud_ssl_certificates_service_certificate[_]
    config := ssl.config
    not re_match(pattern, config.certificate_name)
}