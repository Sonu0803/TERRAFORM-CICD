

resource "aws_instance" "web" {
    
    instance_type = "t2.micro"
    ami =  var.ami 
    # key_name = aws_key_pair.auth.id
    vpc_security_group_ids = [var.vpc_security_group_id]
    subnet_id = var.vpc_subnet_id

    tags = {
      "Name" = "${var.env}-server"
    }
}
