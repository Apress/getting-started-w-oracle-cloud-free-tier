variable subnet1_route_table_display_name {}
variable route_rule1_internet_gateway_description {}

# Route Table 
resource "oci_core_route_table" "subnet1_route_table" {
  # Required
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn1.id

  # Optional
  display_name   = var.subnet1_route_table_display_name

  # Route Rule to route traffic to internet
  route_rules {
    # Required
    network_entity_id = oci_core_internet_gateway.internetgateway1.id

    # Optional
    description = var.route_rule1_internet_gateway_description
    destination        = "0.0.0.0/0"
  }
}

