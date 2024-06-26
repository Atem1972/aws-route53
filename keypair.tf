#generate secure private key and encode it with pem
resource "tls_private_key" "vampy" {
    algorithm = "RSA"
    rsa_bits = 2048

  
}
# create key pair
resource "aws_lightsail_key_pair" "vampy" {
    name = "wisiy"
    public_key = tls_private_key.vampy.public_key_openssh
  
}

#save file
resource "local_file" "ssh_key" {
    filename = "wisiy.pem"
    content = tls_private_key.vampy.private_key_pem
}