provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "dev" {
  ami = "ami-053b12d3152c0cc71"
    instance_type = "t2.micro"
    key_name = "docker"
    tags = {
    Name = "dev-instance"
    env = "dev"
}
}