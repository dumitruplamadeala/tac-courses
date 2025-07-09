
output "aws_iam_user_ids" {
  value = aws_iam_user.example[*].name
}