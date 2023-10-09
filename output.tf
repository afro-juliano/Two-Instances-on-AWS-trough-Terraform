# This is just a file to output the ec2 ip public ip address.
output "ip_address" {
  value = aws_instance.web.public_ip
}
