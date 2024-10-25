output "instance_ids" {
  value       = alicloud_instance.instance[*].id
  description = "The ID of the ECS instance."
}

output "availability_zones" {
  value       = alicloud_vswitch.vswitch[*].availability_zone
  description = "The availability zone of the ECS instance."
}

output "ecs_name" {
  value       = alicloud_instance.instance[0].instance_name
  description = "The name of the ECS instance."
}
