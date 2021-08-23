resource "aws_instance" "venu-instance" {
 ami = "ami-02f84cf47c23f1769"
 instance_type = "t2.micro"
 security_groups = ["${aws_security_group.venu_securitygroup.name}"]
 
 tags = {
     Name = "sharedLibrary_venu"
 } 
}

resource "aws_security_group" "venu_securitygroup" {
  name = "venu_1_securityGroup"
  description = "venu security group"
  ingress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "ingress"
    from_port = 8080
    ipv6_cidr_blocks = [ "::/0" ]
    prefix_list_ids = []
    protocol = "tcp"
    security_groups = []
    self = false
    to_port = 8080
  } ]
  tags = {
          Name = "sharedLibrary_venu_security_group"
      }
}