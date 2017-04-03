# Output endpoints for elasticache

output "node_list" {
  value = "${module.sensu-elasticache.node_list}"
}

output "node_address" {
  value = "${module.sensu-elasticache.node_address}"
}

output "configuration_endpoint" {
  value = "${module.sensu-elasticache.configuration_endpoint}"
}
