terraform {
  backend "s3" {
    bucket = "js-my-tf-website-state"
    key = "terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "my-db-website-table"
  }
}