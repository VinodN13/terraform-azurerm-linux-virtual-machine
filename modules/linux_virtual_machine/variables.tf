variable "virtual_machine_name" {
  type        = string
  description = "The name of the Linux Virtual Machine. "
  default     = null
}

variable "location" {
  type        = string
  description = "The Azure location where the Linux Virtual Machine should exist. "
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which the Linux Virtual Machine should be exist. "
  default     = null
}

variable "vm_size" {
  type        = string
  description = "The SKU which should be used for this Virtual Machine. "
  default     = null
}

variable "admin_username" {
  type        = string
  description = "The username of the local administrator used for the Virtual Machine. "
  default     = null
}

variable "network_interface_ids" {
  type        = list(string)
  description = "A list of Network Interface IDs which should be attached to this Virtual Machine. "
  default     = []
}

variable "admin_ssh_key" {
  type        = any
  description = "The block of admin_ssh_key "
  default     = {}
}

variable "os_disk" {
  type        = any
  description = "The block of os_disk "
  default     = {}
}

variable "source_image_reference" {
  type        = any
  description = "The block of source_image_reference "
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
