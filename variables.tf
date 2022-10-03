variable "admin_username" {
  type = string

  description = <<-EOT
    the `admin_username` for the vm.
    https://go.s3d.club/tf/vm#admin_username
    EOT 
}

variable "location" {
  type = string

  description = <<-EOT
    the `location` for the vm.
    https://go.s3d.club/tf/vm#location
    EOT 
}

variable "name_prefix" {
  type = string

  description = <<-EOT
    a prefix for the random name of the vm.
    https://go.s3d.club/tf/vm#name_prefix
    EOT 
}

variable "disk_size_gb" {
  type = number

  description = <<-EOT
    the `disk_size_gb` for the vm.
    https://go.s3d.club/tf/vm#disk_size_gb
    EOT 
}

variable "plan" {
  type = object({
    name      = string
    product   = string
    publisher = string
  })

  description = <<-EOT
    the `plan` for the vm.
    https://go.s3d.club/tf/vm#plan
    EOT 
}

variable "public_key" {
  type = string

  description = <<-EOT
    the `public_key` for the vm.
    https://go.s3d.club/tf/vm#public_key
    EOT 
}

variable "resource_group_name" {
  type = string

  description = <<-EOT
    the `resource_group_name` of the vm.
    https://go.s3d.club/tf/vm#resource_group_name
    EOT 
}

variable "size" {
  type = string

  description = <<-EOT
    the `size` of the vm.
    https://go.s3d.club/tf/vm#location
    EOT 
}

variable "source_image_id" {
  type = string

  description = <<-EOT
    the `source_image_id` of the vm.
    https://go.s3d.club/tf/vm#location
    EOT 
}

variable "storage_account_type" {
  type = string

  description = <<-EOT
    the `storage_account_type` for the vm.
    https://go.s3d.club/tf/vm#location
    EOT 
}

variable "tags" {
  type = map(string)

  description = <<-EOT
    the `tags` for the vm.
    https://go.s3d.club/tf/vm#tags
    EOT
}

variable "script" {
  type = string

  description = <<-EOT
    a shell script for the vm.
    https://go.s3d.club/tf/vm#subnet_id
    EOT
}

variable "subnet_id" {
  type = string

  description = <<-EOT
    the `subnet_id` for the vm.
    https://go.s3d.club/tf/vm#subnet_id
    EOT
}
