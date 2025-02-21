resource "aws_ebs_volume" "vol_test_atlantis1" {
  availability_zone = "eu-central-1a"
  size              = 6
  tags = {
    Name = "test_vol_atlantis1"
  }
}