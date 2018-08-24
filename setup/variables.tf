variable "profile" {
	description = "AWS credentials profile you want to use"
}

variable "bucket" {
  description = "AWS S3 Bucket name for Terraform state"
}

variable "dynamodb_table" {
  description = "AWS DynamoDB table for state locking"
}

variable "region" {
  description = "AWS Region"
}