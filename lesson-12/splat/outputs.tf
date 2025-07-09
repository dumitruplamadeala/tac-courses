# Add your output code here!
output "ebs_block_device_volume_ids" {
  description = "block device IDs"
  value       = aws_instance.splat_lab.ebs_block_device[*].volume_id
}

output "iam_users_names_splat_test" {
  description = "this block will test splat"
  value       = aws_iam_user.test_users[*].name
}

