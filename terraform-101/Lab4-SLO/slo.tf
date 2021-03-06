terraform {
  required_providers {
    datadog = {
      source = "Datadog/datadog"
    }
  }
}

variable "datadog_api_key" {}
variable "datadog_app_key" {}

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}

resource "datadog_service_level_objective" "slo" {
  name        = "slo from terraform"
  type        = ""
  monitor_ids = []
}