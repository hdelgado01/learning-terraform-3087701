output "instance_ami" {
  value = aws_instance.web.ami
}

output "instance_ami_name" {
  value = aws_instance.web.instance_ami_name
}

output "instance_arn" {
  value = aws_instance.web.arn
}
