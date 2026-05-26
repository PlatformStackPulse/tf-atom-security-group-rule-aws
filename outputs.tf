output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "ingress_rule_id" {
  description = "ID of the ingress rule"
  value       = try(aws_vpc_security_group_ingress_rule.ingress[0].id, null)
}

output "egress_rule_id" {
  description = "ID of the egress rule"
  value       = try(aws_vpc_security_group_egress_rule.egress[0].id, null)
}
