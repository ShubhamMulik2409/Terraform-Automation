terraform {
  backend "s3" {
    bucket = "batch-27-shubham-mulik-bucket-01-sample"
    key = "LondonKey_1"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
