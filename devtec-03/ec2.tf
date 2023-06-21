resource "aws_instance" "servidor-web" {
  ami                    = "ami-022e1a32d3f742bd8"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.sg-web.id}"]

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              sudo systemctl start httpd
              echo "<h1> devTEC 2023 | Evento de Tecnologia </h1>" > /var/www/html/index.html
              sudo systemctl reload httpd
              EOF
  tags = {
    Name = "Servidor-Web"
  }
}