# Creating Module Resource VPC Main
resource "aws_vpc" "main" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = var.enable_dns_hostnames
    enable_dns_support = var.enable_dns_support
    tags = merge(var.common_tags, {Name = var.project_name})  
}
# Creationg resource Internet Gateway
resource "aws_internet_gateway" "main" {
     vpc_id = aws_vpc.main.id
     tags = merge(var.common_tags, { Name = var.project_name }) 
}
resource "aws" "name" {
  
}