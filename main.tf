resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_instance" "server" {
  instance_type = var.instance_type
  ami           = data.aws_ami.amazon_linux.id
  tags = {
    Name = "Backend-demo"
  }
}