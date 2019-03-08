#-----website/variables.tf

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "domain" {}

variable "enable_health_check" {}

variable "health_check_alarm_sns_topics" {}

variable "enable_gzip" {
  type        = "string"
  default     = true
  description = "Whether to make CloudFront automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header"
}
