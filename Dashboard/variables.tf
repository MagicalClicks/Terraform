#Define AWS Region
variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "eu-west-1"
}
variable "grafana_workspace_auth" {
  type = string
}
variable "grafana_workspace_url" {
  type = string
}