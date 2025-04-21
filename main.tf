
variable "region" {
  default = "asia-southeast2"
  type = string 
}
variable "project" {
  default = ""
  type = string
}

provider "google" {
  project = var.project
  region  = var.region
}

provider "google-beta" {
  project = var.project
  region  = var.region
  zone    = "${var.region}-a"
}

resource "google_monitoring_dashboard" "working_dashboard" {
    dashboard_json = file("working.json")
}

resource "google_monitoring_dashboard" "not_working_dashboard" {
    dashboard_json = file("not-working.json")
}