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

/**
resource "aws_s3_bucket_object" "frontend_index" {
  bucket = "${aws_s3_bucket.frontend.id}"
  key    = "index.html"
  source = "index.html"
  etag   = "${md5(file("index.html"))}"
  acl 	 = "public-read"
}

resource "aws_s3_bucket_object" "frontend_404" {
  bucket = "${aws_s3_bucket.frontend.id}"
  key    = "404.html"
  source = "404.html"
  etag   = "${md5(file("404.html"))}"
  acl 	 = "public-read"
}
*/