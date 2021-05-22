terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "1.15.1"
    }
  }
}

variable "rancher2_secret_key" {
  type = string
  description = "Your Rancher Bearer Token"
}

provider "rancher2" {
  api_url = "https://rancher.my-domain.com"
  token_key = var.rancher2_secret_key
  insecure = true
}

resource "rancher2_auth_config_activedirectory" "activedirectory" {
  servers = ["<ACTIVEDIRECTORY_SERVER>"]
  service_account_username = "<SERVICE_DN>"
  service_account_password = "<SERVICE_PASSWORD>"
  user_search_base = "<SEARCH_BASE>"
  port = 636
  test_username = "<USER_NAME>"
  test_password = "<USER_PASSWORD>"
  access_mode = "unrestricted"
  tls = true
}