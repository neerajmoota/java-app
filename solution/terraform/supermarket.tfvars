#Source code location
application_version = "Pilot"
bucket              = "elasticbeanstalk-ap-south-1-<account_number>"
key                 = "source-code/tdd-supermarket-1.0.0-SNAPSHOT.jar"
#BeanStalk Configuration
bs_app_anme         = "Supermarket-app"
description         = "Supermarket application assessment"
env_name            = "Supermarket-env"
solution_stack_name = "64bit Amazon Linux 2023 v4.1.2 running Corretto 17"
tier                = "WebServer"
cname_prefix        = "supermarket-app123"
settings = [
  { namespace = "aws:elasticbeanstalk:cloudwatch:logs", name = "DeleteOnTerminate", value = "false" },
  { namespace = "aws:autoscaling:launchconfiguration", name = "IamInstanceProfile", value = "AmazonSSMRoleForInstancesQuickSetup" },
  { namespace = "aws:autoscaling:launchconfiguration", name = "EC2KeyName", value = "my-key" },
  { namespace = "aws:elasticbeanstalk:environment", name = "ServiceRole", value = "arn:aws:iam::<account_number>:role/service-role/aws-elasticbeanstalk-service-role" },
  { namespace = "aws:elasticbeanstalk:managedactions", name = "ServiceRoleForManagedUpdates", value = "arn:aws:iam::<account_number>:role/service-role/aws-elasticbeanstalk-service-role" },
  { namespace = "aws:autoscaling:launchconfiguration", name = "DisableIMDSv1", value = "true" },
  { namespace = "aws:elasticbeanstalk:environment", name = "LoadBalancerType", value = "application" },
  { namespace = "aws:elasticbeanstalk:healthreporting:system", name = "SystemType", value = "basic" },
  { namespace = "aws:cloudformation:template:parameter", name = "EnvironmentVariables", value = "M2=/usr/local/apache-maven/bin,M2_HOME=/usr/local/apache-maven,GRADLE_HOME=/usr/local/gradle" },
  { namespace = "aws:elasticbeanstalk:environment", name = "LoadBalancerType", value = "application" },
  { namespace = "aws:elbv2:listener:default", name = "DefaultProcess", value = "appPort" },
  { namespace = "aws:elasticbeanstalk:environment:process:appPort", name = "Port", value = "8080" }
]

#Cloudfront Distribution Configuration
enabled                = true
price_class            = "PriceClass_100"
cache_policy_id        = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
allowed_methods        = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
cached_methods         = ["GET", "HEAD", "OPTIONS"]
viewer_protocol_policy = "allow-all"
restriction_type       = "none"
locations              = []
