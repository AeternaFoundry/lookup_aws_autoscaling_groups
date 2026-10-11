data "aws_autoscaling_groups" "autoscaling_groups_lookup" {
  for_each = var.autoscaling_groups_lookup

  names  = each.value.names
  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

