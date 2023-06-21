resource "aws_instance" "app-server" {
  count                  = length(var.subnet_cidr_private)
  instance_type          = "t2.micro"
  ami                    = data.aws_ami.amazon_ami.id
  vpc_security_group_ids = [aws_security_group.http-sg.id]
  subnet_id              = element(aws_subnet.private.*.id, count.index)
  associate_public_ip_address = true
  tags = {
    Name = "Servidor-Web-${count.index + 1}"
  }
  user_data = file("user_data/user_data.sh")
}