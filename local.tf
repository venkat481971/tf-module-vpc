locals {
  vpc_tags = {
    Name = "${var.env}-vpc"
    Env  = var.env
    PROJECT = "roboshop"
  }
}