resource "aws_security_group_rule" "rdp_access" {
  type              = "ingress"
  from_port         = 3389
  to_port           = 3389
  protocol          = "tcp"
  cidr_blocks       = ["10.0.0.6/32"]
  security_group_id = data.aws_security_group.terrasg.id
  description       = "Allow RDP access from terradevmachine"
}