resource "aws_instance" "MyFirstInstance" {
    count = 2
    ami        = "ami-05803413c51f242b7"
    instance_type = "t2.micro"

    tags = {
      Name = "threedemoinstance-${count.index}"
    }
}