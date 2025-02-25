# main.tf
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0"
instance_type = "t3.micro"

tags = {
  Name = "DevOpsProject-${count.index}"
}
}