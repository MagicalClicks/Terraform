resource "grafana_data_source" "cloudwatch" {
  type = "cloudwatch"
  name = "cw-datasource"
   
}

resource "grafana_folder" "data" {
  title = "data"
}
resource "grafana_dashboard" "cloudwatch-logs" {
  config_json = file("./dashboard/amazon-cloudwatch-logs_rev1.json")
  folder = grafana_folder.data.id
  overwrite = true
}
