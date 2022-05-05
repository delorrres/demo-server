resource "aws_security_group" "my_private_app_sg" {
  name        = "syslog_sg"
  description = "Allow access to this server"
  vpc_id      = data.aws_vpc.main.id


  # INBOUND CONNECTIONS
  ingress {
    description = "Allow SSH into the EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.0/16"] # 0.0.0.0/0
  }

#Logstash connectiom
  ingress {
    description = "Allow dummy server to send logs to Logstash"
    from_port   = 5044
    to_port     = 5044
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.0/16"] # 0.0.0.0/0
  }

}