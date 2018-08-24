variable "profile" {
	description = "AWS credentials profile you want to use"
}

variable "sync_bucket_subdomain" {
    default = "sync"
}

variable "root_domain" {
    default = "movies"
}

variable "pipeline_name" {
  default = "static-website"
}

variable "bucket" {
  description = "AWS S3 Bucket name for Terraform state"
}

variable "dynamodb_table" {
  description = "AWS DynamoDB table for state locking"
}

variable "key" {
  description = "Key for Terraform state at S3 bucket"
}

variable "region" {
  description = "AWS Region"
}
