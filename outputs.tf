
output "vpc_id" {
  description = "id de la vpc"
  value = module.vpc.vpc_id

}

output "subnet-pub_id" {
  description = "ids de las subnet publicas"
  value = module.vpc.subnet-pub_id
}
output "subnet-priv_id" {
  description = "ids de las subnet publicas"
  value = module.vpc.subnet-priv_id
}