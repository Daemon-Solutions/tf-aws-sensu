# Output endpoints for elasticache

output "endpoint" {
  value = "${module.sensu-elasticache.cache_nodes}"
}

output "node_address" {
  value = "${module.sensu-elasticache.cache_nodes.0.address}"
}

output "memcached_endpoint" {
  value = "${module.sensu-elasticache.configuration_endpoint}"
}

# Output endpoints for elasticache-repgroup

output "endpoint" {
  value = "${module.sensu-elasticache.endpoint}"
}

output "configuration_endpoint" {
  value = "${module.sensu-elasticache.configuration_endpoint}"
}
