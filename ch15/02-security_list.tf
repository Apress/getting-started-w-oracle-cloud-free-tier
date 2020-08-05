variable security_list1_display_name {}
variable security_list1_egress_security_rules_description {}
variable security_list1_ingress_security_rules_22_description {}
variable security_list1_ingress_security_rules_80_description {}

# Security List
resource "oci_core_security_list" "subnet1_security_list" {
  # Required
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn1.id

  # Optional
  display_name   = var.security_list1_display_name

  # Egress Security Rule
  egress_security_rules {
    # Required
    destination = "0.0.0.0/0"
    protocol    = "6"  

    # Optional
    description = var.security_list1_egress_security_rules_description
  }

  # Ingress Security Rule that allows incoming TCP connections using port 22
  ingress_security_rules {
    # Required
    protocol  = "6"
    source    = "0.0.0.0/0"

    # Optional
    description = var.security_list1_ingress_security_rules_22_description
    stateless = false

    tcp_options {
      min = 22
      max = 22
    }
  }

  # Ingress Security Rule that allows incoming TCP connections using port 80
  ingress_security_rules {
    # Required
    protocol  = "6"
    source    = "0.0.0.0/0"

    # Optional
    description = var.security_list1_ingress_security_rules_80_description
    stateless = false
    
    tcp_options {
      min = 80
      max = 80
    }
  }

  # Ingress Security Rule that allows incoming TCP connections using port 443
  ingress_security_rules {
    # Required
    protocol  = "6"
    source    = "0.0.0.0/0"

    # Optional
    description = var.security_list1_ingress_security_rules_80_description
    stateless = false
   
    tcp_options {
      min = 443
      max = 443
    }
  }
}

