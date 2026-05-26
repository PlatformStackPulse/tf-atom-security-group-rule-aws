resource "aws_vpc_security_group_ingress_rule" "ingress" {
  count = module.this.enabled && var.rule_type == "ingress" ? 1 : 0

  security_group_id            = var.security_group_id
  description                  = var.description
  from_port                    = var.from_port
  to_port                      = var.to_port
  ip_protocol                  = var.ip_protocol
  cidr_ipv4                    = var.cidr_ipv4
  referenced_security_group_id = var.referenced_security_group_id

  tags = module.this.tags
}

resource "aws_vpc_security_group_egress_rule" "egress" {
  count = module.this.enabled && var.rule_type == "egress" ? 1 : 0

  security_group_id            = var.security_group_id
  description                  = var.description
  from_port                    = var.from_port
  to_port                      = var.to_port
  ip_protocol                  = var.ip_protocol
  cidr_ipv4                    = var.cidr_ipv4
  referenced_security_group_id = var.referenced_security_group_id

  tags = module.this.tags
}
