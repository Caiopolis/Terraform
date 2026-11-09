// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "s3Bucket" {
  bucket = "cmoreira-s3-terraform" // Nome do bucket, deve ser único globalmente, caso já exista um bucket com o mesmo nome, o terraform irá retornar erro.
}