
///////////======================//////////////
//// Network(s) =================//////////////
///////////======================//////////////

  //// Create GCP Virtual Network
  resource "google_compute_network" "pcf-virt-net" {
    name       = "${var.gcp_terraform_prefix}-virt-net"
  }


///////////======================//////////////
//// Subnet(s) ==================//////////////
///////////======================//////////////

  //// Create Subnet for the Ops Manager & Jumpbox
  resource "google_compute_subnetwork" "subnet-ops-manager" {
    name          = "${var.gcp_terraform_prefix}-subnet-infrastructure-${var.gcp_region}"
    ip_cidr_range = "${var.opsmgr_cidr}"
    network       = "${google_compute_network.pcf-virt-net.self_link}"
  }
