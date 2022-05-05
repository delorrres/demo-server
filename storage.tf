resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.syslog_storage.id
  instance_id = aws_instance.syslog.id
}

resource "aws_ebs_volume" "syslog_storage" {
  availability_zone = "us-east-2a"
  size              = 50
}