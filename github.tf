provider "aws" { 
    region = "eu-west-1"
    profile = "dev_engineer"
}

data "aws_security_group" "sg_terraform" {
  id = "sg-074868af41ded3c9d"
}

resource "aws_instance" "avi-terraform-03" {
    ami = "ami-0c9c5a0ab4a28ec61"
    instance_type = "t2.micro"
    subnet_id = "subnet-033b9bdd609940306"
    iam_instance_profile = "avi-iam-role"
    vpc_security_group_ids = [data.aws_security_group.sg_terraform.id]

    tags = {
        Name = "avi-terraform-03"
    }
}
