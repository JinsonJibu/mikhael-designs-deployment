# C:\Users\HP\mikhael-designs-project\infra\variables.tf

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "mikhael-designs-rg"
}

variable "location" {
  description = "Azure region for all resources"
  default     = "East US" 
}

variable "acr_name" {
  description = "Globally unique name for Azure Container Registry"
  # IMPORTANT: This must be globally unique and lowercase. 
  # PLEASE CHANGE 'mikhaeldesignsyouruniqueacrname' to something unique like 'mikhaeldesignshpt001'
  default     = "mikhaeldesignshpt001" 
}

variable "aks_name" {
  description = "Name of the Azure Kubernetes Service cluster"
  default     = "mikhael-aks"
}