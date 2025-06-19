provider "aws" {
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  region     = var.aws_region
}

resource "aws_s3_bucket" "mi_bucket" {
  bucket        = var.bucket_name
  force_destroy = true
}

/*
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.mi_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "AllowFullAccessToAccount",
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:*",
        Resource  = [
          "${aws_s3_bucket.mi_bucket.arn}",
          "${aws_s3_bucket.mi_bucket.arn}/*"
        ],
        Condition = {
          StringEquals = {
            "aws:PrincipalAccount" = ""
          }
        }
      }
    ]
  })
}
*/