variable "security_group_id" {
  description = "ID of the security group"
  type        = string
  validation {
    condition     = length(var.security_group_id) > 0
    error_message = "security_group_id must not be empty."
  }
}

variable "rule_type" {
  description = "Type of rule (ingress or egress)"
  type        = string
  validation {
    condition     = contains(["ingress", "egress"], var.rule_type)
    error_message = "rule_type must be ingress or egress."
  }
}

variable "from_port" {
  description = "Start port (use -1 for all)"
  type        = number
}

variable "to_port" {
  description = "End port (use -1 for all)"
  type        = number
}

variable "ip_protocol" {
  description = "Protocol (tcp, udp, icmp, -1 for all)"
  type        = string
  default     = "tcp"
}

variable "cidr_ipv4" {
  description = "CIDR block to allow (mutually exclusive with referenced_security_group_id)"
  type        = string
  default     = null
}

variable "referenced_security_group_id" {
  description = "Security group ID to allow (mutually exclusive with cidr_ipv4)"
  type        = string
  default     = null
}

variable "description" {
  description = "Description of the rule"
  type        = string
  default     = null
}
