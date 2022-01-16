# Terraform IAM Role module

### Install dependencies

<!-- markdownlint-disable no-inline-html -->

* [`pre-commit`](https://pre-commit.com/#install)
* [`terraform-docs`](https://github.com/terraform-docs/terraform-docs)
* [`terragrunt`](https://terragrunt.gruntwork.io/docs/getting-started/install/)
* [`terrascan`](https://github.com/accurics/terrascan)
* [`TFLint`](https://github.com/terraform-linters/tflint)
* [`TFSec`](https://github.com/liamg/tfsec)
* [`infracost`](https://github.com/infracost/infracost)
* [`jq`](https://github.com/stedolan/jq)

### Install the pre-commit hook globally

```bash
DIR=~/.git-template
git config --global init.templateDir ${DIR}
pre-commit init-templatedir -t pre-commit ${DIR}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_policy_document.assume-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | (Required) Application name | `string` | n/a | yes |
| <a name="input_aws_service"></a> [aws\_service](#input\_aws\_service) | (Required) AWS Service | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | (Required) Environment (dev, stg, prd) | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | (Optional) Policy name | `any` | `{}` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | (Optional) Policy name | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | (Required) AWS Region | `string` | n/a | yes |
| <a name="input_role_description"></a> [role\_description](#input\_role\_description) | (Required) Role description | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | (Required) Role name | `string` | n/a | yes |
| <a name="input_role_policy_arns_list"></a> [role\_policy\_arns\_list](#input\_role\_policy\_arns\_list) | (Optional) List of policies arn | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) List of policies arn | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | Role arn |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Role name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
