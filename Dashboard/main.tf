#https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source
#https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source
resource "grafana_data_source" "cloudwatch" {
  type = "cloudwatch"
  name = "cw-datasource"
  
   
}
#https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/folder
resource "grafana_folder" "data" {
  title = "data"
}
#https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/dashboard
resource "grafana_dashboard" "cloudwatch-logs" {
  config_json = file("./dashboard/amazon-cloudwatch-logs_rev1.json")
  folder = grafana_folder.data.id
  overwrite = true
}