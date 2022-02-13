resource "aws_instance" "MyFirstInstance" {
    count = 1
    ami        = lookup(var.AMIS, var.AWS_REGION)
    instance_type = "t2.micro"

    tags = {
      Name = "threedemoinstance-${count.index}"
    }
}