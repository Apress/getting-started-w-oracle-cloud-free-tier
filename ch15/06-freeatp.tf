variable adb_name {}
variable adb_display_name {}
variable adb_password {}

# Always Free Autonomous Transaction Processing
resource "oci_database_autonomous_database" "freeatp01" {
  # Required
  admin_password           = var.adb_password
  compartment_id           = var.compartment_ocid
  cpu_core_count           = "1"
  data_storage_size_in_tbs = "1"
  db_name                  = var.adb_name

  # Optional
  db_workload  = "OLTP"
  display_name = var.adb_display_name
  is_auto_scaling_enabled = "false"
  license_model           = "LICENSE_INCLUDED"
  is_free_tier            = "true"
}
