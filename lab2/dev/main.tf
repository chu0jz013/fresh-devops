module "network" {
  source   = "../modules/aws/network"
}

module "ec2" {
  source   = "../modules/aws/ec2"
}