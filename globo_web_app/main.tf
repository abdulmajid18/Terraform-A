# Configure the AWS Provider
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "web_server" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = var.instance_type
  tags = {
    Name = "terraform-example"
  }

}