variable subnet1_cidr {}
variable subnet1_display_name {}
variable subnet1_dns_label {}

# Subnet
resource "oci_core_subnet" "subnet1" {
  # Required
  vcn_id            = oci_core_vcn.vcn1.id
  compartment_id    = var.compartment_ocid
  cidr_block        = var.subnet1_cidr

  # Optional
  display_name      = var.subnet1_display_name
  dns_label         = var.subnet1_dns_label
  security_list_ids = [oci_core_security_list.subnet1_security_list.id]
  route_table_id    = oci_core_route_table.subnet1_route_table.id
  dhcp_options_id   = oci_core_vcn.vcn1.default_dhcp_options_id
}
