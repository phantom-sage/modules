data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

/*data "terraform_remote_state" "db" {
  backend = "s3"

  config = {
    bucket = "terraform-up-and-running-state-12132142"
    key = "stage/data-stores/mysql-terraform.tfstate"
    region = "us-east-1"
    access_key = "AKIAZEFUPDLLJFN44UOW"
    secret_key = "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"
   }
}*/