# Terraform Azure Lab

Laboratorio práctico de aprendizaje de Terraform con Microsoft Azure. El proyecto documenta el diseño, despliegue, modificación y eliminación controlada de infraestructura de red utilizando Infrastructure as Code (IaC).

## Objetivos

* Comprender el funcionamiento de Terraform y su ciclo de trabajo.
* Definir y administrar recursos de Azure mediante archivos HCL.
* Aprender a utilizar variables, outputs, data sources y referencias entre recursos.
* Diseñar una red virtual con subnets y controles de seguridad.
* Interpretar planes de ejecución y cambios de infraestructura.
* Practicar el uso de Git y GitHub para documentar el trabajo.
* Aprender a controlar costos y limpiar recursos al finalizar un laboratorio.

## Infraestructura implementada

### 02 — Resource Group

Creación y administración de un Resource Group de Azure mediante Terraform.

Conceptos trabajados:

* Configuración del proveedor AzureRM.
* Definición de recursos.
* Inicialización y validación.
* Planificación y aplicación de cambios.
* Estado de Terraform.

### 03 — Network

Despliegue de una infraestructura de red compuesta por:

* Virtual Network (VNet).
* Subnet web.
* Subnet de base de datos.
* Network Security Groups (NSG).
* Reglas de tráfico entrante.
* Asociaciones entre NSG y subnets.
* Variables y outputs para organizar la configuración.

Se practicaron cambios en reglas de seguridad, prioridades, puertos y direccionamiento IP.

## Seguridad

Durante el laboratorio se estudiaron los siguientes criterios:

* Permitir HTTP mediante TCP 80.
* Evitar la exposición pública innecesaria de SSH.
* Limitar el acceso al puerto TCP 1433 de SQL Server a la subnet web.
* Denegar el resto del tráfico entrante a la subnet de base de datos.
* Comprender que un NSG controla tráfico de red, pero no reemplaza la autenticación ni los permisos del servicio.

Estas reglas representan una práctica educativa y no constituyen, por sí solas, una arquitectura de producción completa.

## Herramientas

* Terraform.
* Microsoft Azure.
* Azure CLI.
* Visual Studio Code.
* Git y GitHub.
* HCL (HashiCorp Configuration Language).

## Flujo de trabajo

Para los cambios se utilizó el siguiente proceso:

1. Modificar los archivos Terraform.
2. Ejecutar `terraform fmt`.
3. Ejecutar `terraform validate`.
4. Revisar los cambios mediante `terraform plan`.
5. Aplicar los cambios cuando el resultado era el esperado.
6. Verificar los recursos y outputs.
7. Registrar los cambios en Git y publicarlos en GitHub.

## Gestión de costos y limpieza

El laboratorio se cerró después de completar las prácticas de Resource Groups y networking. Se decidió no desplegar una máquina virtual adicional para evitar mantener infraestructura potencialmente facturable.

La limpieza se realizó mediante Terraform, eliminando primero los recursos de red y luego el Resource Group, con el objetivo de evitar recursos residuales.

El proyecto conserva las configuraciones y la documentación para poder reconstruir la infraestructura en el futuro.

## Alcance y trabajo futuro

No se desplegó una máquina virtual Linux ni se implementó un servidor web o una instancia de SQL Server. Esos componentes se consideraron como posibles extensiones, pero quedaron fuera del alcance de esta etapa.

Próximas áreas de aprendizaje:

* Módulos y separación por entornos.
* Gestión remota del estado.
* Pruebas automatizadas de configuraciones Terraform.
* Integración continua con GitHub Actions.
* Identidad, autenticación y acceso seguro a Azure.
* Gestión de costos y políticas de seguridad.

## Nota

Este repositorio es un laboratorio educativo. No contiene credenciales ni archivos de estado de Terraform. La infraestructura activa fue eliminada al finalizar las prácticas.
