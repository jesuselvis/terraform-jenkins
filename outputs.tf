
output "vpc_id" {
  description = "id de la vpc"
  value = aws_vpc.my_vpc.id

}

output "subnet-pub_id" {
  description = "ids de las subnet publicas"
  value = aws_subnet.public_subnet.id
}
output "subnet-priv_id" {
  description = "ids de las subnet publicas"
  value = aws_subnet.public_subnet.id
}