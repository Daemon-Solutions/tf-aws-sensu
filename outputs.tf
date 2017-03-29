# Output endpoints for elasticache

output "elasticache_cluster_redis_endpoint" {
  value = "${module.sensu-elasticache.cache_nodes}"
}

output "elasticache_cluster_node_address" {
  value = "${module.sensu-elasticache.cache_nodes.0.address}"
}

output "elasticache_cluster_memcached_endpoint" {
  value = "${module.sensu-elasticache.configuration_endpoint}"
}

# Output endpoints for elasticache-repgroup

output "elasticache_replication_group_endpoint" {
  value = "${module.sensu-elasticache.elasticache_replication_group_endpoint}"
}

output "elasticache_replication_group_configuration_endpoint" {
  value = "${module.sensu-elasticache.elasticache_replication_group_configuration_endpoint}"
}
