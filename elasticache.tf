module "sensu-elasticache" {
  source = "../tf-aws-elasticache"

  name        = "${var.name}"
  cluster_id = "${var.cluster_id}"
  subnets     = "${var.private_subnets}"
  vpc_id      = "${var.vpc_id}"
  vpc_cidr    = "${var.vpc_cidr}"
  elasticache_instance_type = "${var.elasticache_instance_type}"
  parameter_group_name = "${var.parameter_group_name}"
  engine_version = "${var.engine_version}"
  snapshot_window = "${var.snapshot_window}"
  snapshot_retention_limit = "${var.snapshot_retention_limit}"
}
