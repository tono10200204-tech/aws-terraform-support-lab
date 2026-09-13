#key
resource "aws_key_pair" "support_lab" {
  key_name   = "support-lab-key"
  public_key = file("${pathexpand("~/.ssh/id_ed25519.pub")}")
}
