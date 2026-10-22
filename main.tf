terraform {
  required_version = ">= 1.12.0"
}
resource "terraform_data" "welcome" {     # resource directly built into the core Terraform binary ==> no provider needed
  input = var.message
}
output "result" {
  value = terraform_data.welcome.output
}
