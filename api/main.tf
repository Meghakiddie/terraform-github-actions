resource "google_project_service" "project" {
    count = length(var.api-names)
  service = element(var.api-names, count.index)
}
