module "sensu-elasticache" {
  /*source = "../tf-aws-elasticache"

  name        = "${var.name}"
  cluster_id = "${var.cluster_id}"
  subnets     = "${var.private_subnets}"
  vpc_id      = "${var.vpc_id}"
  vpc_cidr    = "${var.vpc_cidr}"
  parameter_group = "${var.parameter_group}"
  engine_version = "${var.engine_version}"
  snapshot_window = "${var.snapshot_window}"
  snapshot_retention_limit = "${var.snapshot_retention_limit}"*/

  source = "../tf-aws-elasticache-rep-group"

  envname  = "${var.envname}"
  envtype  = "${var.envtype}"
  customer = "${var.customer}"

  vpc_id   = "${module.vpc.vpc_id}"
  vpc_cidr = "${module.vpc.vpc_cidr}"
  key_name = "${var.key_name}"

  replication_group_name   = "${var.replication_group_name}"
  snapshot_window          = "01:00-08:00"
  snapshot_retention_limit = "7"
  cluster_size             = "3"
  private_subnets          = ["${module.vpc.private_subnets}"]
}
