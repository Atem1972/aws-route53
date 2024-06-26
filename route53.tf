resource "aws_route53_record" "www" {
    zone_id = "Z07219192GFUIG44V4PBY"
    type = "A"
    ttl = 300
    name = "fashion.dev-guro.info"
    records = [aws_lightsail_instance.web-server.public_ip_address]  # to recall public ip. copy from output public ip address
  
}