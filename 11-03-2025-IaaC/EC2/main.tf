resource "aws_security_group" "allow_tls" {
	name = "allow_tls"
	description = "allow inboud and outbound traffic"
	
	 ingress {
	 
		from_port        = 22
		to_port          = 22
		protocol         = "tcp"
		cidr_blocks      = ["0.0.0.0/0"]
		ipv6_cidr_blocks = ["::/0"]
		
	}
     
	 egress {
	 
		from_port        = 0
		to_port          = 0
		protocol         = "-1"
		cidr_blocks      = ["0.0.0.0/0"]
		ipv6_cidr_blocks = ["::/0"]
		
	}
	 tags = {
		
		name = "allow_tls"
	 
	 }
  
}

resource "aws_instance" "terraform" {
	
	ami = ""
	instance_type = "t3.medium"
	vpc_security_group_ids = [aws_security_group.allow_tls.id]
	
	tags = {
				name = "terraform"
	 	 }
  
}