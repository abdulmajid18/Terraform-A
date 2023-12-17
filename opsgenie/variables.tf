variable "opsgenie_api_key" {
    type = string
    description = "OpsGenie Api Key"
    sensitive = true
}

variable "opsgenie_api_url" {
    type = string
    description = "OpsGenie Api Url"
    default = "api.opsgenie.com"
}