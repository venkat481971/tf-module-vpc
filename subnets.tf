module "subnets" {
  for_each                  = var.vpc
  source                    = "./subnets"
  subnets                   = each.value.subnets
  vpc_id                    = [for k, v in aws_vpc.main : v.id]
  env                       = var.env
  subnet_availability_zones = each.value.subnet_availability_zones
}
