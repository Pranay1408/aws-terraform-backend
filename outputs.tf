output "bucket_name" {
  value = aws_s3_bucket.terraform_state.bucket
}

output "table_name" {
  value = aws_dynamodb_table.terraform_lock.name
}

output "public_ip" {
  value = aws_instance.server.public_ip
}