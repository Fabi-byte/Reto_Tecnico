output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-private-bucket.id
}
output "s3_bucket_region" {
    value = aws_s3_bucket.my-s3-private-bucket.region
}

output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-public-bucket.id
}
output "s3_bucket_region" {
    value = aws_s3_bucket.my-s3-public-bucket.region
}