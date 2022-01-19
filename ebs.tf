provider "aws" {
  region = "us-east-2"
}
resource "aws_elastic_beanstalk_application" "tftest11" {
  name        = "tf-test11"
  description = "tf-test-desc"
}

resource "aws_elastic_beanstalk_environment" "tfenvtest11" {
  name                = "tf-test11"
  application         = aws_elastic_beanstalk_application.tftest11.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.9 running PHP 8.0"
}
