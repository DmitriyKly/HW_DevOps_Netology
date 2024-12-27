## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.8.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.135.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_analytics_vm"></a> [analytics\_vm](#module\_analytics\_vm) | git::https://github.com/udjin10/yandex_compute_instance.git | main |
| <a name="module_marketing_vm"></a> [marketing\_vm](#module\_marketing\_vm) | git::https://github.com/udjin10/yandex_compute_instance.git | main |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | /home/dmitriy/terra_netology/ter-homeworks/04/demonstration1/vms/.terraform/modules/vpc1 | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.develop](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.develop_b](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |
| [template_file.cloudinit](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | n/a | `string` | `"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCx+gGqL+b1AYoVv0Clq8zZLU2FnNlj/JEFtcSDuQ8q8zaf6t5R3x1eHXEgtOPTDoTksIdF2ULO8w6iph2r8hDaWEF0gXa7TaJL0XWKhUPWQtiJjzosi9vaxna5ynV27T74I4T+enaFcRfjbIUeQKbY6wlEA/Ar1b8p/A8/E1n4HbhMSKD40rSmBrqNvYwf74LF11DS+Hfejfg6C9qcGVOK3G/IUcAwdY2HcurNBB3gGCXks+vEROLltHQqhh9q7GWlIqH74NVfTxA4U+LriHirKZxdbFrhebpABmIBgk6z/mGeuDsbRqVc/RsfOdPklrlPH30XhsjeCOG1xDExQ2mI+o0bMV+Nr4Qp44ypJrGBMUPNUKMoVDFS9qAYv9x0jnOux4sD2JydpgXUobaUHhypBxMkkWyyF2CX5jQlX5i1IiUlog7P0+H0QlnKue14RRESZfGnR+lJOGbvLHenMkWpHu7vRLW0hxkzHOw5f8GB/cf+XGL+tViQmaB6/ZTbqwc= dmitriy@ubuntu01"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_out"></a> [out](#output\_out) | n/a |
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | n/a |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | n/a |
