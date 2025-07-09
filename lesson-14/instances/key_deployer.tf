# Create a key and add it here in both deployer blocks

resource "aws_key_pair" "deployer_ohio" {
  key_name   = "ssh_key"
  # Enter your key here
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA/pO/cKykH0WJz7PipoMpIo2T7cdO/Y9gflz5wvtz0j nono@thermoynd"
}

resource "aws_key_pair" "deployer_virginia" {
  provider = aws.virginia
  key_name   = "ssh_key"
  # Enter your key here
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA/pO/cKykH0WJz7PipoMpIo2T7cdO/Y9gflz5wvtz0j nono@thermoynd"
}
