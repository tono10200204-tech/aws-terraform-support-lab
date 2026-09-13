#EC2
#最新AMIの取得を採用。
resource "aws_instance" "web" {
  ami                    = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ssh.id]
  key_name               = aws_key_pair.support_lab.key_name
  tags = {
    Name = "support-lab-ec2"
  }
}
