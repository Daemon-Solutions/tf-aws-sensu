# Output endpoints for elasticache

output "sensu_instance_type" {
	value = "${sensu_instance_type}"
}
output "sensu_sg_id" {
  value = "${aws_security_group.sensu.id}"
}

output "endpoint" {
  value = "${module.elasticache.cache_nodes}"
}

output "node_address" {
  value = "${module.elasticache.cache_nodes.0.address}"
}

output "memcached_endpoint" {
  value = "${module.elasticache.configuration_endpoint}"
}


# Output endpoints for elasticache-repgroup

output "endpoint" {
  value = "${module.elasticache-repgroup.sensu.endpoint}"
}

output "configuration_endpoint" {
  value = "${module.elasticache-repgroup.configuration_endpoint}"
}
