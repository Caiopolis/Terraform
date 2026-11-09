terraform {
    Configuração geral do Terraform
}

provider "nome do provider" {
    configuração do provider escolhido, nesse exemplo aws
}

resource "nome especifico do módulo (tipo da função)" "nome que desejar (nome da função)" {

    Configuração para criar o tipo de recurso desejado

}

data "nome especifico do recurso (tipo da função)" "nome que desejar (nome da função)"{

    Busca de dados de recursos existentes que estão fora do controle do Terraform local.

} 

module "nome do módulo"{

    pedaço de código que chama o módulo, com as variáveis de entrada e saída do módulo.

}

variable "NomeVariavel" {

         declaração de variáveis de entrada, com tipo, descrição e valor padrão.

}

output "NomeOutput" {

         declaração de variáveis de saída, com descrição e valor padrão.

}

locals {
    
         declaração de variáveis locais, função, com descrição e valor padrão.
         reutilização de código, para não precisar repetir o mesmo código em vários lugares do projeto.
}

import {

         declaração de importação de recursos existentes, que não estão sob o controle do Terraform local.

}

moved {
    função de mover recursos existentes já declarados, 
    mudando a referência de um recurso para outro, sem precisar destruir e recriar o recurso.
}

removed {
    faz o oposto do moved, mas para "remover" recursos existentes já declarados, o terraform desconsidera o recurso, deixa de gerenciar, sem destruir o recurso.
}

check "nomeCheck"{

    Realiza verificações dentro de uma determida condição, para validar se o recurso está de acordo com a política definida, 
    caso não esteja, o terraform não permite a execução do plano.

}