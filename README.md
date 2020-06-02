# AWS ECS Terraform module

Terraform module which creates an [ECS service](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html) and optionally a cluster on AWS.

## Features

If there is a missing feature or a bug - [open an issue](https://github.com/Henridv/terraform-aws-ecs/issues/new).

## Conditional creation

```hcl
# This will create a service without creating an accompanying cluster
module "ecs_service" {
  source = "git@github.com:Henridv/terraform-aws-ecs"

  create_cluster = false
  # ... omitted
}
```

## Examples

No examples yet

## Known issues

No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name      | Version   |
|-----------|-----------|
| terraform | ~> 0.12.6 |
| aws       | ~> 2.42   |

## Providers

| Name | Version |
|------|---------|
| aws  | ~> 2.42 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create_cluster | Controls if ECS cluster should be created  | bool | true | no |
| cluster_arn | Cluster ARN if only service is created. Required if create_cluster is false | string | | yes |
| name | Name for the service | string | | yes |
| container_name | | string | | yes |
| task_definition | | string | | yes |
| target_group | | string | | yes |
| port | Container port | number | 80 | no |
| tags | A mapping of tags to assign to security group | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster_arn  | The ARN of the created ECS cluster  |
| service_name | The name of the created ECS service |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Henri De Veene](https://github.com/Henridv).

## License

MIT Licensed. See LICENSE for full details.
