output "my_next_js_website__4238" {
  value = aws_s3_bucket_website_configuration.bucket_config
}

output "cloudfront_url" {
  value = aws_s3_bucket.my_next_js_website_4238.bucket_regional_domain_name
}