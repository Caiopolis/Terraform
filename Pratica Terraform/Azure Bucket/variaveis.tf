// https://developer.hashicorp.com/terraform/language/values/variables

variable "location" {
  type        = string
  description = "Localidade do grupo onde os recursos serão criados."
  default     = "brazilsouth"

}

variable "account_tier" {

  type        = string
  description = "Responsável por definir o nível de desempenho da conta de armazenamento."
  default     = "Standard"

}

variable "account_replication_type" {

  type        = string
  description = "Responsável por definir o tipo de replicação da conta de armazenamento."
  default     = "LRS"

}

variable "nome_grupo" {
  description = "Responsável por definir o nome do grupo de recursos."
  type        = string
  default     = "cmoreira-terraform"

}

variable "nome_bucket" {
  description = "Responsável por definir o nome do bucket de armazenamento."
  type        = string
  default     = "cmoreiraterraform"

}

variable "nome_container" {
  description = "Responsável por definir o nome do container de armazenamento."
  type        = string
  default     = "cmoreira-terraform-container"
}