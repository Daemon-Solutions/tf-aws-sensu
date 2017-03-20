module "sensu-elasticache" {
  source = "../tf-aws-elasticache"

  name        = "${var.name}"
  cluster_id = "${var.cluster_id}"
  subnets     = "${var.private_subnets}"
  vpc_id      = "${var.vpc_id}"
  vpc_cidr    = "${var.vpc_cidr}"
  instance_type = "${var.elasticache_instance_type}"
  snapshot_window = "${var.snapshot_window}"
  snapshot_retention_limit = "${var.snapshot_retention_limit}"
}
