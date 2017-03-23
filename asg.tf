module "asg" {
  #source = "c:/users/sdatt/documents/bashton/tf-aws-asg"
  source = "../tf-aws-asg"

  name                  = "${var.customer}-${var.envname}-sensu"
  envname               = "${var.envname}"
  service               = "${var.envtype}"

  ami_id                      = "${var.ami_id}"
  instance_type               = "${var.instance_type}"
  iam_instance_profile        = "${aws_iam_instance_profile.sensu.id}"
  key_name                    = "${var.key_name}"
  security_groups             = ["${aws_security_group.sensu.id}"]
  user_data                   = "${var.sensu_userdata}"
  subnets                     = "${var.public_subnets}"
  min                         = "${length(var.subnets)}"
  max                         = "${length(var.subnets)}"
}
