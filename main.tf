
#lightsail server centos7
resource "aws_lightsail_instance" "web-server" {
    name = "lamp-server"
    blueprint_id = "centos_7_2009_01"
  bundle_id = "medium_1_0"
  availability_zone = "us-east-1a"
  key_pair_name = "wisiy"
  user_data = file("resume.sh")
}