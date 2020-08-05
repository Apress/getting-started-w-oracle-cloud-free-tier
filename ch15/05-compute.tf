variable instance01_name {}
variable instance01_shape {}
variable ssh_public_key {}
variable instance01_script {}

# Get information about the availability domains
data "oci_identity_availability_domains" "ADs" {
  compartment_id = "${var.compartment_ocid}"
}

# Compute
resource "oci_core_instance" "instance01" {
  # Required
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[count.index%3],"name")
  compartment_id      = var.compartment_ocid
  shape               = var.instance01_shape

  # Optional
  count = "1"
  display_name        = var.instance01_name
  shape_config {
    ocpus = "1"
  }

  create_vnic_details {
    # Required
    subnet_id        = oci_core_subnet.subnet1.id

    # Optional
    display_name     = "Primaryvnic"
    assign_public_ip = true
    hostname_label   = var.instance01_name
  }

  source_details {
    # Required
    source_type = "image"
    source_id   = "ocid1.image.oc1.uk-london-1.aaaaaaaaz57okycdlykwzwegouf6p4fl6leo3mf7zs2setxxbls26hctpkgq"
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
    user_data = base64encode(file(var.instance01_script))
  }
}
