
variable "location" {
  description = "Región de Azure donde se desplegará la red"
  type        = string
  default     = "eastus"
}

variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
  default     = "vnet-terraform-lab"
}

variable "vnet_address_space" {
  description = "Rango de direcciones IP de la VNet"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_name" {
  description = "Nombre de la subnet para recursos web"
  type        = string
  default     = "snet-web"
}

variable "subnet_address_prefixes" {
  description = "Rangos de direcciones IP de la subnet"
  type        = list(string)
  default     = ["10.10.1.0/24"]
}
