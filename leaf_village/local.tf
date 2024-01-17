locals {
  zone_id = join(",", values(module.route53_zone.route53_hosted_zones[*].zone_id))

region_mapping = {
    "uzumaki"   = "us-east-2"
    }

  matching_region = {
    for key, region in local.region_mapping : 
    key => strcontains(var.team_name, key) ? region : null
  }
  region = join(",", [for region in values(local.matching_region) : region if region != null])
}



