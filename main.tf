resource "oci_database_management_db_management_private_endpoint" "database_management_db_management_private_endpoints" {
  for_each = var.database_management_db_management_private_endpoints

  compartment_id            = each.value.compartment_id
  name                      = each.value.name
  subnet_id                 = each.value.subnet_id
  defined_tags              = each.value.defined_tags
  description               = each.value.description
  freeform_tags             = each.value.freeform_tags
  is_cluster                = each.value.is_cluster
  is_dns_resolution_enabled = each.value.is_dns_resolution_enabled
  nsg_ids                   = each.value.nsg_ids
  security_attributes       = each.value.security_attributes

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

