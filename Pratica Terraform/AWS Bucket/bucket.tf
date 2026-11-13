// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "s3Bucket" {
  bucket = "s3-bucket-legal"
}

resource "aws_s3_bucket_versioning" "versioning" { // Habilita o versionamento no bucket S3, permitindo que múltiplas versões de um objeto sejam armazenadas e recuperadas.
  bucket = aws_s3_bucket.s3Bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}