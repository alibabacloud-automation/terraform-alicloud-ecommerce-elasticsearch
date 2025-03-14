Alicloud E-Commerce&Elasticsearch Terraform Module On Alibaba Cloud

terraform-alicloud-ecommerce-elasticsearch
---

[English](README.md) | 简体中文

本 Module 用于在阿里云创建一个服务电商的 ElasticSearch 搜索基础设施。

## 用法

```hcl
module "example" {
  source   = "terraform-alicloud-modules/e-commerce-elasticsearch/alicloud"
  ecs_name = "tf-e-commerce-elasticsearch"
}
```

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_db_account.account](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/db_account) | resource |
| [alicloud_db_account_privilege.privilege](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/db_account_privilege) | resource |
| [alicloud_db_database.db](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/db_database) | resource |
| [alicloud_db_instance.rds](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/db_instance) | resource |
| [alicloud_eip_address.eip](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/eip_address) | resource |
| [alicloud_eip_association.eip_asso](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/eip_association) | resource |
| [alicloud_instance.instance](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/instance) | resource |
| [alicloud_security_group.group](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/security_group) | resource |
| [alicloud_security_group_rule.http](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/security_group_rule) | resource |
| [alicloud_security_group_rule.icmp](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/security_group_rule) | resource |
| [alicloud_security_group_rule.rdp](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/security_group_rule) | resource |
| [alicloud_security_group_rule.ssh](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/security_group_rule) | resource |
| [alicloud_vpc.vpc](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vpc) | resource |
| [alicloud_vswitch.vswitch](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/vswitch) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The Zone to start the instance in. | `string` | `""` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | Set of available zones used to launch several new vswitches. | `list(string)` | `[]` | no |
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | Set of cidr blocks used to launch several new vswitches. | `list(string)` | `[]` | no |
| <a name="input_db_account_type"></a> [db\_account\_type](#input\_db\_account\_type) | Privilege type of account. | `string` | `"Normal"` | no |
| <a name="input_db_character_set"></a> [db\_character\_set](#input\_db\_character\_set) | Character set. | `string` | `"utf8"` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of the database requiring a uniqueness check. | `string` | `""` | no |
| <a name="input_db_privilege"></a> [db\_privilege](#input\_db\_privilege) | The privilege of database. | `string` | `"ReadWrite"` | no |
| <a name="input_db_storage_type"></a> [db\_storage\_type](#input\_db\_storage\_type) | The DB instance storage type. | `string` | `"cloud_essd"` | no |
| <a name="input_description"></a> [description](#input\_description) | The security group description. | `string` | `""` | no |
| <a name="input_disk_category"></a> [disk\_category](#input\_disk\_category) | Valid values are ephemeral\_ssd, cloud\_efficiency, cloud\_ssd, cloud\_essd, cloud. | `string` | `"cloud_efficiency"` | no |
| <a name="input_ecs_charge_type"></a> [ecs\_charge\_type](#input\_ecs\_charge\_type) | Valid values are PrePaid, PostPaid, The default is PostPaid. | `string` | `"PostPaid"` | no |
| <a name="input_ecs_count"></a> [ecs\_count](#input\_ecs\_count) | The number of instances to be created. | `number` | `1` | no |
| <a name="input_ecs_name"></a> [ecs\_name](#input\_ecs\_name) | The name of the ECS. | `string` | `""` | no |
| <a name="input_ecs_password"></a> [ecs\_password](#input\_ecs\_password) | Password to an instance is a string of 8 to 30 characters. | `string` | `""` | no |
| <a name="input_ecs_type"></a> [ecs\_type](#input\_ecs\_type) | The type of instance to start. | `string` | `""` | no |
| <a name="input_eip_internet_charge_type"></a> [eip\_internet\_charge\_type](#input\_eip\_internet\_charge\_type) | The specification of the eip internet charge type. | `string` | `"PayByBandwidth"` | no |
| <a name="input_eip_isp"></a> [eip\_isp](#input\_eip\_isp) | The ISP of EIP address. | `string` | `"BGP"` | no |
| <a name="input_eip_payment_type"></a> [eip\_payment\_type](#input\_eip\_payment\_type) | The payment type of EIP address. | `string` | `"PayAsYouGo"` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The specification of the engine. | `string` | `"MySQL"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The specification of the engine version. | `string` | `"5.7"` | no |
| <a name="input_http_port_range"></a> [http\_port\_range](#input\_http\_port\_range) | The port range of HTTP rule. | `string` | `"80/80"` | no |
| <a name="input_icmp_port_range"></a> [icmp\_port\_range](#input\_icmp\_port\_range) | The port range of ICMP rule. | `string` | `"-1/-1"` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | The Image to use for the instance. | `string` | `""` | no |
| <a name="input_instance_charge_type"></a> [instance\_charge\_type](#input\_instance\_charge\_type) | Valid values are Prepaid, Postpaid, Default to Postpaid. | `string` | `"Postpaid"` | no |
| <a name="input_instance_storage"></a> [instance\_storage](#input\_instance\_storage) | The specification of the instance storage. | `string` | `"100"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The specification of the rds instance type. | `string` | `""` | no |
| <a name="input_internet_charge_type"></a> [internet\_charge\_type](#input\_internet\_charge\_type) | Internet charge type of the instance, Valid values are PayByBandwidth, PayByTraffic. | `string` | `"PayByTraffic"` | no |
| <a name="input_internet_max_bandwidth_out"></a> [internet\_max\_bandwidth\_out](#input\_internet\_max\_bandwidth\_out) | Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bit per second). | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of module. | `string` | `""` | no |
| <a name="input_nic_type"></a> [nic\_type](#input\_nic\_type) | Network type, can be either internet or intranet, the default value is internet. | `string` | `"intranet"` | no |
| <a name="input_rdp_port_range"></a> [rdp\_port\_range](#input\_rdp\_port\_range) | The port range of RDP rule. | `string` | `"3389/3389"` | no |
| <a name="input_rds_account_name"></a> [rds\_account\_name](#input\_rds\_account\_name) | Operation account requiring a uniqueness check. | `string` | `""` | no |
| <a name="input_rds_account_pwd"></a> [rds\_account\_pwd](#input\_rds\_account\_pwd) | Operation password. | `string` | `""` | no |
| <a name="input_rds_zone_id"></a> [rds\_zone\_id](#input\_rds\_zone\_id) | The Zone to launch the DB instance. | `string` | `""` | no |
| <a name="input_rule_policy"></a> [rule\_policy](#input\_rule\_policy) | The policy of rule. | `string` | `"accept"` | no |
| <a name="input_rule_priority"></a> [rule\_priority](#input\_rule\_priority) | The priority of rule. | `number` | `1` | no |
| <a name="input_rule_type"></a> [rule\_type](#input\_rule\_type) | The type of rule. | `string` | `"ingress"` | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | The name of the security group. | `string` | `""` | no |
| <a name="input_ssh_port_range"></a> [ssh\_port\_range](#input\_ssh\_port\_range) | The port range of SSH rule. | `string` | `"22/22"` | no |
| <a name="input_system_disk_size"></a> [system\_disk\_size](#input\_system\_disk\_size) | Size of the system disk, measured in GiB. | `number` | `100` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The secondary CIDR blocks for the VPC. | `string` | `""` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zones"></a> [availability\_zones](#output\_availability\_zones) | The availability zone of the ECS instance. |
| <a name="output_ecs_name"></a> [ecs\_name](#output\_ecs\_name) | The name of the ECS instance. |
| <a name="output_instance_ids"></a> [instance\_ids](#output\_instance\_ids) | The ID of the ECS instance. |
<!-- END_TF_DOCS -->

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)