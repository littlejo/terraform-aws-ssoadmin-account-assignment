<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssoadmin_account_assignment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_account_assignment) | resource |
| [aws_identitystore_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/identitystore_group) | data source |
| [aws_identitystore_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/identitystore_user) | data source |
| [aws_ssoadmin_instances.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssoadmin_instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accounts"></a> [accounts](#input\_accounts) | Select list of accounts for assignment | `list(string)` | n/a | yes |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | Groupe Name for assignment (conflict with user\_name, you have to choose between user\_name and group\_name | `string` | `null` | no |
| <a name="input_permission_set_arn"></a> [permission\_set\_arn](#input\_permission\_set\_arn) | Permission set arn for assignment | `string` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | User Name for assignment (conflict with group\_name, you have to choose between user\_name and group\_name) | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->