# Create S3 Bucket Resource
resource "aws_s3_bucket_public_access_block" "example_block" {
  bucket = aws_s3_bucket.s3_bucket.id

  # Public access block configuration
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
 
  acl    = "public-read"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": [
              "s3:GetObject"
          ],
          "Resource": [
              "arn:aws:s3:::${var.bucket_name}/*"
          ]
      }
  ]
}  
EOF
  website {
    index_document = "index.html"
    #error_document = "error.html"
  }
  tags          = var.tags
  force_destroy = true
  

provisioner "local-exec" {
  command = "aws s3 cp ./webpage/* s3://${var.bucket_name}/"
}

}