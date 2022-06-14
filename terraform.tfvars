environment = "deve"
app_name    = "param-store-test"
kms_arn     = "arn:aws:kms:us-west-2:169889227629:key/228a9e30-f9a6-4fb5-8993-a97bbd5271b5"
parameter_write = [
  {
    name        = "key1"
    description = "test param"
    type        = "String"
    value       = "value1"
    overwrite   = "true"
  },
  {
    name        = "key2"
    description = "test param2"
    type        = "SecureString"
    value       = "value2"
    overwrite   = "true"
  }
]
