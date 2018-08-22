provider "aws" {
  profile    = "${var.profile}"
  region     = "${var.region}"
}

resource "aws_dynamodb_table" "unwatched-top-movies-dynamodb-table" {
  name           = "UnwatchedTopMovies"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "MovieId"

  attribute {
    name = "MovieId"
    type = "S"
  }
}

resource "aws_s3_bucket" "frontend" {
    bucket = "${var.sync_bucket_subdomain}.${var.root_domain}"

    website {
        index_document = "index.html"
        error_document = "404.html"
    }
}

