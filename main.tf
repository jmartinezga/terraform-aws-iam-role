#https://registry.terraform.io/providers/hashicorp/aws/latest/docs
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role
locals {
  role_name      = "${var.environment}-${var.role_name}"
  tf_version     = trimspace(chomp(file("./tf_version")))
  module_version = trimspace(chomp(file("./version")))
  last_update    = formatdate("YYYY-MM-DD hh:mm:ss", timestamp())
  tags = merge(var.tags, {
    Name           = "${local.role_name}",
    environment    = "${var.environment}",
    application    = "${var.application}",
    module_name    = "terraform-aws-iam-role",
    module_version = "${local.module_version}",
    terraform      = "${local.tf_version}",
    last_update    = "${local.last_update}"
  })
}

data "aws_iam_policy_document" "assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["${var.aws_service}"]
    }
  }
}

resource "aws_iam_role" "this" {
  name                = local.role_name
  description         = var.role_description
  managed_policy_arns = var.role_policy_arns_list
  assume_role_policy  = data.aws_iam_policy_document.assume-role-policy.json
  tags                = local.tags
}

resource "aws_iam_role_policy" "this" {
  count = var.policy_name != null ? 1 : 0

  name   = var.policy_name
  role   = aws_iam_role.this.id
  policy = jsonencode(var.policy)
}

resource "aws_iam_instance_profile" "this" {
  count = var.aws_service == "ec2.amazonaws.com" ? 1 : 0

  name = local.role_name
  role = aws_iam_role.this.name
}
