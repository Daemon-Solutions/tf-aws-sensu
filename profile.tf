resource "aws_iam_instance_profile" "sensu" {
  path = "/"
  name  = "${var.customer}-${var.envname}-sensu"
  roles = ["${aws_iam_role.sensu.name}"]
}

resource "aws_iam_role" "sensu" {
  name = "${var.customer}-${var.envname}-sensu"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}