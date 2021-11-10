package accurics

##ruleName sslNotCertificateName
##policyType alicloud
##resourceType alicloud_ssl_certificates_service_certificate

sslNotCertificateName[ssl.id]{
    ssl := input.alicloud_ssl_certificates_service_certificate[_]
    config := ssl.config
    not config.certificate_name
}
