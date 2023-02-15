

resource "aws_key_pair" "instance_auth" {
  key_name   = "instancekey"
  public_key = file("~/.ssh/instancekey.pub")
}