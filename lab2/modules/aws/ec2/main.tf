resource "aws_instance" "ecitu" {
  ami           = "ami-002843b0a9e09324a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}