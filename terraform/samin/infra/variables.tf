///////////////////////////////////////////////
//////// Declare Vars /////////////////////////
///////////////////////////////////////////////


variable "gcp_proj_id" {}
variable "gcp_region" {}
variable "gcp_creds" {}
variable "gcp_terraform_prefix" { default = "concourse-gcp" }

variable "opsmgr_cidr" { default = "10.0.0.0/20" }
