data "aws_lb" "eb_lb" {
  arn = aws_elastic_beanstalk_environment.env.load_balancers[0]
}

resource "aws_cloudfront_distribution" "cf_dist" {
  enabled     = var.enabled
  price_class = var.price_class
  origin {
    domain_name = data.aws_lb.eb_lb.dns_name
    origin_id   = data.aws_lb.eb_lb.dns_name
    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }
  default_cache_behavior {
    cache_policy_id        = var.cache_policy_id
    allowed_methods        = var.allowed_methods
    cached_methods         = var.cached_methods
    target_origin_id       = data.aws_lb.eb_lb.dns_name
    viewer_protocol_policy = var.viewer_protocol_policy
  }
  restrictions {
    geo_restriction {
      restriction_type = var.restriction_type
      locations        = var.locations
    }
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
}