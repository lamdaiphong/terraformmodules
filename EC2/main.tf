resource "aws_instance" "myec2" {
  ami           = "ami-0e040c48614ad1327"
  instance_type = lookup(var.wrkspace_map,terraform.workspace)
}