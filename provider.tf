terraform {
  required_providers {
    ldap = {
      source = "dodevops/ldap"
      version = "0.4.0"
    }
  }
}
  provider "ldap" {
  ldap_url           = "ldaps://ldap.forumsys.com "
  ldap_bind_dn       = "cn=read-only-admin,dc=example,dc=com" 
  ldap_bind_password = "password"
}