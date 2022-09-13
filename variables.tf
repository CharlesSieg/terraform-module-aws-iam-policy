variable "description" {
  description = "Description of the policy."
  type        = string
}

variable "name" {
  description = "Name of application or service."
  type        = string
}

variable "policy_path" {
  description = "Path to the policy."
  type        = string
}

variable "policy_vars" {
  default     = {}
  description = ""
  type        = map(any)
}

variable "role_name" {
  description = "Name of the role to which the policy will be attached."
  type        = string
}

variable "tags" {
  type = map(string)
}
