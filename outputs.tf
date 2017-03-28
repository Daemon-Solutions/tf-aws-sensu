# Outputs

output "sensu_instance_type" {
	value = "${sensu_instance_type}"
}
output "sensu_sg_id" {
  value = "${aws_security_group.sensu.id}"
}
