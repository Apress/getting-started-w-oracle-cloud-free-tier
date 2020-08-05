variable compartment_ocid {}
variable region {}
variable vcn_cidr {}
variable vcn_display_name {}
variable vcn_dns_label {}
variable internetgateway1_display_name {}

# Authentication
provider "oci" {
  auth   = "InstancePrincipal"
  region = var.region
}

# Virtual Cloud Network
resource "oci_core_vcn" "vcn1" {
  # Required
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_ocid

  # Optional
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}

# Internet Gateway
resource "oci_core_internet_gateway" "internetgateway1" {
  # Required
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn1.id
  
  # Optional
  display_name   = var.internetgateway1_display_name
}

