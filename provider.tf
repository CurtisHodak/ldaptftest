terraform {
  required_providers {
    ldap = {
      source = "dodevops/ldap"
      version = "0.4.0"
    }
  }
}
provider "ldap" {
  ldap_url             = "ldap://ipa.demo1.freeipa.org"
  ldap_bind_dn         = "uid=admin,cn=users,cn=accounts,dc=demo1,dc=freeipa,dc=org"
  ldap_bind_password   = "Secret123"
  #insecure_skip_verify = true  # Required for self-signed certs
}