# Create a key and add it here in both deployer blocks

resource "aws_key_pair" "deployer_ohio" {
  key_name   = "ssh_key"
  # Enter your key here
  public_key = "ssh-ed25519 AAAA... your_public_key_here"
}

resource "aws_key_pair" "deployer_virginia" {
  provider = aws.virginia
  key_name   = "ssh_key"
  # Enter your key here
  public_key = "ssh-ed25519 AAAA... your_public_key_here"
}
