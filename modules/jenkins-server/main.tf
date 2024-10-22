resource "aws_instance" "jenkins_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("${path.module}/jenkins.sh")
  vpc_security_group_ids = var.security_group_id
  tags = {
    Name = "jenkins-server"
  }
}
