#https://www.terraform.io/language/values/variables
###############################################################################
# Required variables
###############################################################################
variable "role_name" {
  description = "(Required) Role name"
  type        = string
  nullable    = false

  validation {
    condition     = length(var.role_name) > 0
    error_message = "Role name is required."
  }
}

variable "role_description" {
  description = "(Required) Role description"
  type        = string
  nullable    = false

  validation {
    condition     = length(var.role_description) > 0
    error_message = "Role description is required."
  }
}

variable "aws_service" {
  description = "(Required) AWS Service"
  type        = string
  nullable    = false

  validation {
    condition     = can(regex("\\w*.amazonaws.com", var.aws_service))
    error_message = "You must put a valid AWS service (ex: ec2.amazonaws.com)."
  }
}

###############################################################################
# Optional variables
###############################################################################
variable "role_policy_arns_list" {
  description = "(Optional) List of policies arn"
  type        = list(string)
  default     = []
}

variable "policy_name" {
  description = "(Optional) Policy name"
  type        = string
  nullable    = true
  default     = null
}

variable "policy" {
  description = "(Optional) Policy name"
  type        = any
  default     = {}
}

variable "tags" {
  description = "(Optional) List of policies arn"
  type        = any
  default     = {}
}
