
variable "localidadeAzure" {
  type        = string
  description = "Localidade do grupo onde os recusrsos estão alocados"
  default     = "brazilsouth"
}

variable "tierConta" {
  type        = string
  description = "nivel do desempenho da conta de armazenamento"
  default     = "Standard"
}

variable "recplicacaoConta" {
  type        = string
  description = "tipo de replicação da conta de armazenamento"
  default     = "LRS"
}

