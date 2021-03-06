provider "aws" {
  region = "us-east-2"
}
resource "aws_elastic_beanstalk_application" "tftest3" {
  name        = "tf-test3"
  description = "tf-test-desc"
}

resource "aws_elastic_beanstalk_environment" "tfenvtest3" {
  name                = "tf-test2"
  application         = aws_elastic_beanstalk_application.tftest3.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.9 running PHP 8.0"
  
    setting {
      namespace = "aws:autoscaling:launchconfiguration"
      name = "IamInstanceProfile"
      value = "demo_full_access"
  }
}
