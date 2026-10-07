# 03 - Azure Network

## Objetivo

Crear una red virtual en Azure utilizando Terraform y aplicar
controles básicos de seguridad.

## Infraestructura

- Resource Group existente
- Virtual Network
- Web Subnet
- Network Security Group
- NSG asociado a la subnet

## Network

### Virtual Network

- Name: `vnet-terraform-lab`
- Address space: `10.10.0.0/16`
- Location: `eastus`

### Web Subnet

- Name: `snet-web`
- Address space: `10.10.1.0/24`

## Network Security

Network Security Group:

`nsg-web`

### Rules

| Name | Direction | Protocol | Port | Action |
|---|---|---|---:|---|
| allow-http | Inbound | TCP | 80 | Allow |
| allow-https | Inbound | TCP | 443 | Allow |
| deny-rdp | Inbound | TCP | 3389 | Deny |

## Terraform concepts

- Resources
- Data sources
- Variables
- Outputs
- Dependencies
- Resource associations
- Network Security Groups

## Validation

Commands used:

```bash
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform state list

### Experimento A - Cambio de puerto HTTP

Se modificó la regla `allow-http` de puerto 80 a puerto 8080.

El objetivo fue observar cómo Terraform detecta un cambio
en una regla existente y qué acción propone en el plan.

Resultado:

- Recurso afectado: `azurerm_network_security_group.web`
- VNet: sin cambios
- Subnet: sin cambios