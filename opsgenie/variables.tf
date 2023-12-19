variable "opsgenie_api_key" {
  type        = string
  description = "OpsGenie Api Key"
  sensitive   = true
}

variable "opsgenie_api_url" {
  type        = string
  description = "OpsGenie Api Url"
  default     = "api.opsgenie.com"
}

variable "scom_enabled" {
  description = "If set to true, don't recreate a scom integration"
  type        = bool
  #   default = true
}


variable "name" {
  type        = string
  description = "Name of the Team"
}


variable "enabled" {
  type        = bool
  description = "Enable and Disable integration"
  default     = false
}