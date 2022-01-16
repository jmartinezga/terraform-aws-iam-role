# Common variables
region      = "eu-west-1"
application = "helloworld"
environment = "dev"

# Module variables
role_name        = "CodeDeloyServiceRole"
role_description = "CodeDeploy Service Role"
aws_service      = "codedeploy.amazonaws.com"
role_policy_arns_list = [
  "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole",
  "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
]
policy_name = "CodeDeployAutoScalingGroupLaunchTemplatePolicy"
policy = {
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Sid" : "VisualEditor0",
      "Effect" : "Allow",
      "Action" : [
        "iam:PassRole",
        "ec2:CreateTags",
        "ec2:RunInstances"
      ],
      "Resource" : "*"
    }
  ]
}
