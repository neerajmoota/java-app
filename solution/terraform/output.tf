
output "APP-URL" {
    description = "CDN endpoint of APP"
    value = "https://${aws_cloudfront_distribution.cf_dist.domain_name}"
}