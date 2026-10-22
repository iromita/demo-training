terraform {
  required_version = ">= 1.12.0"
}

resource "terraform_data" "network" {
  input = {
    owner = "platform-team"
    cidr  = "10.0.0.0/16"
  }
}
