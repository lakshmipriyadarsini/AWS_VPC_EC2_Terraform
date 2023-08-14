 resource "aws_instance" "web-1" {
          
     ami = "${var.ami_id}"
     instance_type = "${var.instance_type}"
     availability_zone = "${var.azs}"
     subnet_id = aws_subnet.subnet1-public.id
     vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
     key_name = "PriyaKeyPair"
     associate_public_ip_address = true	
     tags = {
        Name = "Server-1"
        Env = "dev"
        Owner = "Priyadarsini"
 	    CostCenter = "ABCD"
    }
 }