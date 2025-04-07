terraform {
  backend "s3" {
    bucket = "batch-27-shubham-mulik-bucket-01-sample"
    key = "Mumbai-Key_1"
    region = "ap-south-1"
    dynamodb_table = "use_lockfile"
  }
}
