//Documentação Locals Values: https://developer.hashicorp.com/terraform/language/values/locals


locals { // Local Values são valores que podem ser definidos e reutilizados em todo o código Terraform, permitindo a criação de variáveis locais que podem ser usadas para simplificar a configuração e evitar a repetição de valores.
  common_tags = {
    owner      = "cmoreira"
    menaged_by = "Terraform"
  }
}