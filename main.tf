resource "ldap_object" "example" {
  dn             = "cn=example,dc=example,dc=org"
  object_classes = ["person"]
  attributes = {
    cn           = ["example"]
    sn           = ["test"]
    userPassword = ["secret"]
  }
  ignore_changes = ["userPassword"]
}