# Module: param-store
variable "environment" {
  description = "The AWS environment"
}

variable "app_name" {
  description = "The application name associated with the parameter"
}

variable "parameter_read" {
  type        = "list"
  description = "List of parameters to read from SSM. These must already exist otherwise an error is returned. Can be used with `parameter_write` as long as the parameters are different."
  default     = []
}

variable "parameter_write" {
  type = "list"

  description = <<DESC
  List of maps with the Parameter values in this format.
  Parameter Write Format Example
  [{
    name = "test_var1" // Required
    type = "String" // Required - Valid types are String, StringList and SecureString
    value = "value1" // Required
    description = "Some Description Var1" // Optional
    overwrite = true // Optional - Force Overwrite of value if true.
  }]
DESC

  default = []
}

variable "kms_arn" {
  type        = "string"
  default     = ""
  description = "The ARN of a KMS key used to encrypt and decrypt SecretString values"
}

variable "enabled" {
  type        = "string"
  default     = "true"
  description = "Set to `false` to prevent the module from creating and accessing any resources"
}

variable "split_delimiter" {
  type        = "string"
  default     = "~^~"
  description = "A delimiter for splitting and joining lists together for normalising the output"
}
