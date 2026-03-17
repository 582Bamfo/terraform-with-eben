## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_my_favorite_number"></a> [my\_favorite\_number](#input\_my\_favorite\_number) | n/a | `number` | `7` | no |
| <a name="input_my_instances"></a> [my\_instances](#input\_my\_instances) | n/a | <pre>map(object({<br/>    instance_type = string<br/>    ami           = string<br/>  }))</pre> | n/a | yes |
| <a name="input_my_list"></a> [my\_list](#input\_my\_list) | n/a | `list(number)` | <pre>[<br/>  1,<br/>  5,<br/>  6,<br/>  8,<br/>  10,<br/>  3,<br/>  2<br/>]</pre> | no |
| <a name="input_my_number_of_instances"></a> [my\_number\_of\_instances](#input\_my\_number\_of\_instances) | n/a | `number` | `3` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"bob"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_my_even_numbers"></a> [my\_even\_numbers](#output\_my\_even\_numbers) | n/a |
| <a name="output_my_favorite_number"></a> [my\_favorite\_number](#output\_my\_favorite\_number) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
