package accurics

##ruleName SSLNameNotDomainNameHorizontalLocatedThreeFour
##policyType alicloud
##resourceType alicloud_ssl_certificates_service_certificate

pattern := "^[a-zA-Z0-9]{2}--"

CDNNotContainLetterNumberHorizontal[ssl.id] {
    ssl := input.alicloud_ssl_certificates_service_certificate[_]
    config := ssl.config
    re_match(pattern, config.certificate_name)
}