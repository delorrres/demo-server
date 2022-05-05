

#LOGSTASH INSTANCE
resource "aws_instance" "syslog" {
  ami                         = data.aws_ami.ubuntu_image.id
  instance_type               = var.ec2_type
  key_name                    = var.my_keypair
  subnet_id                   = data.aws_subnet.private-elk.id
  vpc_security_group_ids      = [aws_security_group.my_private_app_sg.id]
  availability_zone           = "us-east-2a"
  associate_public_ip_address = true

  tags = {
    Name = "syslog-server"
  }
}

