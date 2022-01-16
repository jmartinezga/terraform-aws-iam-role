# Common variables
region      = "eu-west-1"
application = "helloworld"
environment = "dev"

# Module variables
role_name        = "EC2InstanceRole"
role_description = "EC2 Instance Role"
aws_service      = "ec2.amazonaws.com"
role_policy_arns_list = [
  "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
  "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy",
  "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforAWSCodeDeploy",
]
