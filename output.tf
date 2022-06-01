output "s3_bucket_private_name" {
  value = aws_s3_bucket.my-s3-private-bucket.id
}
output "s3_bucket_private_region" {
    value = aws_s3_bucket.my-s3-private-bucket.region
}

output "s3_bucket_public_name" {
  value = aws_s3_bucket.my-s3-public-bucket.id
}
output "s3_bucket_public_region" {
    value = aws_s3_bucket.my-s3-public-bucket.region
}