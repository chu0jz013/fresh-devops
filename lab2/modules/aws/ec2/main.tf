resource "aws_instance" "ecitu" {
  ami           = "ami-002843b0a9e09324a" #ubuntu
  instance_type = "t2.micro"
  key_name = "super-key-pair2"
  

  tags = {
    Name = "ExampleAppServerInstance"
  }
  user_data = <<-EOT
              #!/bin/bash
              apt update -y
              apt install -y nginx

              # Start Nginx and enable it to start on system boot
              systemctl start nginx
              systemctl enable nginx
              EOT
}
