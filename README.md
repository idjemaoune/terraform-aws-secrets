# AWS Secrets manager Terraform Module #

This Terraform module deploys AWS Secrets.

[![](https://github.com/idjemaoune/terraform-aws-secrets/workflows/Terraform/badge.svg)](https://github.com/idjemaoune/terraform-aws-secrets/actions?query=workflow%3ATerraform)
[![](https://img.shields.io/github/license/idjemaoune/terraform-aws-secrets)](https://github.com/idjemaoune/terraform-aws-secrets)
[![](https://img.shields.io/github/issues/idjemaoune/terraform-aws-secrets)](https://github.com/idjemaoune/terraform-aws-secrets)
[![](https://img.shields.io/github/issues-closed/idjemaoune/terraform-aws-secrets)](https://github.com/idjemaoune/terraform-aws-secrets)
[![](https://img.shields.io/github/languages/code-size/idjemaoune/terraform-aws-secrets)](https://github.com/idjemaoune/terraform-aws-secrets)
[![](https://img.shields.io/github/repo-size/idjemaoune/terraform-aws-secrets)](https://github.com/idjemaoune/terraform-aws-secrets)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.33.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A description of the secret. | `string` | n/a | yes |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | Specifies the ARN or Id of the AWS KMS customer master key (CMK) to be used to encrypt the secret values in the versions stored in this secret. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default CMK (the one named aws/secretsmanager). If the default KMS CMK with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /\_+=.@- | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | A valid JSON document representing a resource policy. | `string` | `""` | no |
| <a name="input_recovery_window_in_days"></a> [recovery\_window\_in\_days](#input\_recovery\_window\_in\_days) | Specifies the number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days. | `number` | `30` | no |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | List of secrets to keep in AWS Secrets Manager. | `any` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to parameter group. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_secretsmanager_secret_id"></a> [aws\_secretsmanager\_secret\_id](#output\_aws\_secretsmanager\_secret\_id) | Aws secretsmanager secret id. |
<!-- END_TF_DOCS -->
