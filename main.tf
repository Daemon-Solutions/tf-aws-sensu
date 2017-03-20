// SECURITY GROUPS

// security group for access in/out of Sensu instance
resource "aws_security_group" "sensu" {
	name        = "client-sensu-${var.envtype}"
	description = "Sensu Security Group"
	vpc_id      = "${var.vpc_id}"

}

resource "aws_security_group_rule" "ssh" {
	type = "ingress"
	protocol = "tcp"
	from_port = "22"
	to_port = "22"
	security_group_id = "${aws_security_group.sensu.id}"
	cidr_blocks = ["${var.vpc_cidr}", "${var.allowed_remote_cidrs}"]
}

resource "aws_security_group_rule" "sensu-api-in" {
	type = "ingress"
	protocol = "tcp"
	from_port = "4567"
	to_port = "4567"
	security_group_id = "${aws_security_group.sensu.id}"
	cidr_blocks = ["${var.vpc_cidr}"]
}
resource "aws_security_group_rule" "sensu-api-out" {
	type = "egress"
	protocol = "tcp"
	from_port = "4567"
	to_port = "4567"
	security_group_id = "${aws_security_group.sensu.id}"
	cidr_blocks = ["${var.vpc_cidr}"]
}
resource "aws_security_group_rule" "sensu-elasticache" {
	type = "egress"
	protocol = "tcp"
	from_port = "6379"
	to_port = "6379"
	security_group_id = "${aws_security_group.sensu.id}"
	cidr_blocks = ["${var.vpc_cidr}"]
}

resource "aws_security_group_rule" "uchiwa" {
	type = "ingress"
	protocol = "tcp"
	from_port = "3000"
	to_port = "3000"
	security_group_id = "${aws_security_group.sensu.id}"
	cidr_blocks = ["${var.vpc_cidr}", "${var.allowed_remote_cidrs}"]
}

resource "aws_security_group_rule" "https-repos" {
	type = "egress"
	protocol = "tcp"
	from_port = "443"
	to_port = "443"
	security_group_id = "${aws_security_group.sensu.id}"
	cidr_blocks = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "http-repos" {
	type = "egress"
	protocol = "tcp"
	from_port = "80"
	to_port = "80"
	security_group_id = "${aws_security_group.sensu.id}"
	cidr_blocks = ["0.0.0.0/0"]
}
