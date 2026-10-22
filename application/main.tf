terraform {
  required_version = ">= 1.12.0"
}

resource "terraform_data" "app" {
  input = {
    owner   = "app-team"
    release = var.release
  }

  triggers_replace = [var.release]
}