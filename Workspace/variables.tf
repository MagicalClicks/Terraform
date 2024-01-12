variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "eu-west-1"
}
variable "access_key" {
  description = "The access_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}
variable "secret_key" {
  description = "The secret_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}
