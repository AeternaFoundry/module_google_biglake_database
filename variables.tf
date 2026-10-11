variable "biglake_databases" {
  description = <<EOT
Map of biglake_databases, attributes below
Required:
    - catalog
    - name
    - type
    - hive_options (block):
        - location_uri (optional)
        - parameters (optional)
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    catalog         = string
    name            = string
    type            = string
    deletion_policy = optional(string)
    hive_options = object({
      location_uri = optional(string)
      parameters   = optional(map(string))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

