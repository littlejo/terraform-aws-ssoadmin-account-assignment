variable "user_name" {
  description = "User Name for assignment (conflict with group_name, you have to choose between user_name and group_name)"
  type        = string
  default     = null
}

variable "group_name" {
  description = "Groupe Name for assignment (conflict with user_name, you have to choose between user_name and group_name"
  type        = string
  default     = null
}

variable "permission_set_arn" {
  description = "Permission set arn for assignment"
  type        = string
}

variable "accounts" {
  description = "Select list of accounts for assignment"
  type        = list(string)
}
