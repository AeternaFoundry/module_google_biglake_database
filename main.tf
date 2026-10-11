resource "google_biglake_database" "biglake_databases" {
  for_each = var.biglake_databases

  catalog         = each.value.catalog
  name            = each.value.name
  type            = each.value.type
  deletion_policy = each.value.deletion_policy

  hive_options {
    location_uri = each.value.hive_options.location_uri
    parameters   = each.value.hive_options.parameters
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

