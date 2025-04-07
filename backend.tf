terraform {
  backend "s3" {
    bucket = "batch-27-shubham-mulik-bucket-01-sample"
    key = "Mumbai-Key_1"
    region = "eu-west-2"
    dynamodb_table = "my-dynamodb-table"
  }
}
