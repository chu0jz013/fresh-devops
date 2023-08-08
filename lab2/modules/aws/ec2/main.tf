resource "aws_instance" "ecitu" {
  ami           = "ami-002843b0a9e09324a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
  user_data = <<-EOT
              #!/bin/bash
              yum update -y
              yum install -y nginx

              # Start Nginx and enable it to start on system boot
              systemctl start nginx
              systemctl enable nginx
              EOT
}
