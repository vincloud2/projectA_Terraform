module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "terraform-instance-2"

  instance_type          = "t2.micro"
  key_name               = "vinod_2023_nov_new"
  monitoring             = true
  vpc_security_group_ids = ["sg-04e862208a52f4b86"]


  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
