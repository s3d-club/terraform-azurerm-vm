variable "admin_username" {
  type = string

  description = <<-EOT
    The `admin_username` for the vm.
    EOT 
}

variable "disk_size_gb" {
  type = number

  description = <<-EOT
    The `disk_size_gb` for the vm.
    EOT 
}

variable "location" {
  type = string

  description = <<-EOT
    The `location` for the vm.
    EOT 
}

variable "name_prefix" {
  type = string

  description = <<-EOT
    A prefix for the random name of the vm.
    EOT 
}

variable "plan" {
  type = object({
    name      = string
    product   = string
    publisher = string
  })

  description = <<-EOT
    The `plan` for the vm.
    EOT 
}

variable "public_key" {
  type = string

  description = <<-EOT
    The `public_key` for the vm.
    EOT 
}

variable "resource_group_name" {
  type = string

  description = <<-EOT
    The `resource_group_name` of the vm.
    EOT 
}

variable "script" {
  type = string

  description = <<-EOT
    A shell script for the vm.
    EOT
}

variable "size" {
  type = string

  description = <<-EOT
    The `size` of the vm.
    EOT 
}

variable "source_image_id" {
  type = string

  description = <<-EOT
    The `source_image_id` of the vm.
    EOT 
}

variable "storage_account_type" {
  type = string

  description = <<-EOT
    The `storage_account_type` for the vm.
    EOT 
}

variable "subnet_id" {
  type = string

  description = <<-EOT
    The `subnet_id` for the vm.
    EOT
}

variable "tags" {
  type = map(string)

  description = <<-EOT
    The `tags` for the vm.
    EOT
}
