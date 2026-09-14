variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "Dev"
}