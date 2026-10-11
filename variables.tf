variable "database_management_db_management_private_endpoints" {
  description = <<EOT
Map of database_management_db_management_private_endpoints, attributes below
Required:
    - compartment_id
    - name
    - subnet_id
Optional:
    - defined_tags
    - description
    - freeform_tags
    - is_cluster
    - is_dns_resolution_enabled
    - nsg_ids
    - security_attributes
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id            = string
    name                      = string
    subnet_id                 = string
    defined_tags              = optional(map(string))
    description               = optional(string)
    freeform_tags             = optional(map(string))
    is_cluster                = optional(bool)
    is_dns_resolution_enabled = optional(bool)
    nsg_ids                   = optional(set(string))
    security_attributes       = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

