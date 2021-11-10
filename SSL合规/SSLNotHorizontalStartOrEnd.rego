package accurics

##ruleName SSLNotHorizontalStartOrEnd
##policyType alicloud
##resourceType alicloud_ssl_certificates_service_certificate

pattern := "^-|-$"

SSLNotHorizontalStartOrEnd[ssl.id] {
    ssl := input.alicloud_ssl_certificates_service_certificate[_]
    config := ssl.config
    re_match(pattern, config.certificate_name)
}