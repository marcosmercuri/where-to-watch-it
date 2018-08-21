variable "profile" {
    description = "AWS credentials profile you want to use"
}

variable "region" {
  default = "eu-west-1"
}

variable "sync_bucket_subdomain" {
    default = "sync"
}

variable "root_domain" {
    default = "movies"
}