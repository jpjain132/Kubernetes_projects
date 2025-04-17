# 1️⃣ Define the Provider (AWS)
provider "aws" {
  region = "us-east-1"  # Change this as per your AWS region
}

# 2️⃣ Create an EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-002cb6127676a5723"  # Amazon Linux AMI
  instance_type = "t4g.micro"

  tags = {
    Name = "MyTerraformInstance"
  } 
}

output "instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}
