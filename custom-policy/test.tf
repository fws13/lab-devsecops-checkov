# 1. tanpa tag (harus FAILED)
resource "aws_s3_bucket" "no_tags" {
  bucket = "bucket-without-tags"
}

# 2. tag tidak lengkap (harus FAILED)
resource "aws_s3_bucket" "partial_tags" {
  bucket = "bucket-partial-tags"
  tags = {
    owner = "devops-team"
  }
}

# 3. tag lengkap (harus PASSED)
resource "aws_s3_bucket" "full_tags" {
  bucket = "bucket-with-all-tags"
  tags = {
    owner       = "devops-team"
    environment = "production"
    project     = "ecommerce"
  }
}
