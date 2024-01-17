#Beanstalk variables
variable "bs_app_anme" {
  type = string
}

variable "description" {
  type = string
}

variable "env_name" {
  type = string
}

variable "solution_stack_name" {
  type = string
}

variable "tier" {
  type = string
}

variable "cname_prefix" {
  type = string
}

variable "settings" {
  type = list(object({ namespace = string, name = string, value = string }))
}

variable "application_version" {
  type = string
}

variable "bucket" {
  type = string
}

variable "key" {
  type = string
}

#CloudFront variables

variable "enabled" {
  type = bool
}

variable "price_class" {
  type = string
}

variable "cache_policy_id" {
  type = string
}

variable "allowed_methods" {
  type = list(string)
}

variable "cached_methods" {
  type = list(string)
}

variable "viewer_protocol_policy" {
  type = string
}

variable "restriction_type" {
  type = string
}

variable "locations" {
  type = list(string)
}