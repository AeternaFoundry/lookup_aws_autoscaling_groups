variable "autoscaling_groups_lookup" {
  description = <<EOT
Map of autoscaling_groups_lookup, attributes below
Optional:
    - names
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    names  = optional(list(string))
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = list(string)
    })))
  }))
}

