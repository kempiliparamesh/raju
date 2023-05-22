resource "aws_instance" "my-machine" {
  # Creates four identical aws ec2 instances
  count = 2     
  
  # All four instances will have the same ami and instance_type
  ami = "ami-0b08bfc6ff7069aff" 
  instance_type = "t2.micro" 
  key_name = "pk"
  vpc_id = "0edadf5ef8256057b"
  subnet_id = "subnet-04a80a60b57c6b47c"
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "my-machine-${count.index}"
  }
}
