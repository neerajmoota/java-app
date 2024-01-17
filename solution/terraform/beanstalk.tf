resource "aws_elastic_beanstalk_application" "app" {
  name        = var.bs_app_anme
  description = var.description
}

resource "aws_elastic_beanstalk_environment" "env" {
  name                = var.env_name
  description         = var.description
  application         = aws_elastic_beanstalk_application.app.name
  solution_stack_name = var.solution_stack_name
  tier                = var.tier
  cname_prefix        = var.cname_prefix
  dynamic "setting" {
    for_each = var.settings
    content {
      namespace = setting.value["namespace"]
      name      = setting.value["name"]
      value     = setting.value["value"]
    }
  }
}

resource "aws_elastic_beanstalk_application_version" "default" {
  name        = var.application_version
  application = var.bs_app_anme
  description = "Accolite DIgital Assignment"
  bucket      = var.bucket
  key         = var.key
}
