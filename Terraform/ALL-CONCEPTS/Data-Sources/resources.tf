resource "aws_instance" "roboshop" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"  
}