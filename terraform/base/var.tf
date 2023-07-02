variable "aws_profile" {
  description = "aws profile for deployment"
}

variable "aws_region" {
  description = "aws region for deployment"
}

variable "stage" {
  description = "Name of the stage"
}

variable "account_id" {
  type        = string
  description = "AWS Account ID"
}

