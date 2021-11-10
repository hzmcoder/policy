package accurics

##ruleName SSLNameNotDomainNameAppointSuffix
##policyType alicloud
##resourceType alicloud_ssl_certificates_service_certificate

pattern := ".*.sh$|.*.tel$"

SSLNameNotDomainNameAppointSuffix[ssl.id]{
  ssl := input.alicloud_ssl_certificates_service_certificate[_]
  config := ssl.config
  re_match(pattern, config.certificate_name)
}

