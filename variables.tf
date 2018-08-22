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

variable "pipeline_name" {
  default = "static-website"
}

variable "github_username" {
}

variable "github_token" {
}

variable "github_repo" {
	default = "where-to-watch-it"
}
