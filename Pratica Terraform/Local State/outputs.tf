output "bucket_id" {
  description = "ID do bucket criado na AWS."
  value       = aws_s3_bucket.s3Bucket.id
}

output "bucket_arn" {
  description = "ARN do bucket criado na AWS."
  value       = aws_s3_bucket.s3Bucket.arn

}