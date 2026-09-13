variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "aws-terraform-support-lab"
}

# SSH を許可する自分のグローバルIP。実値は terraform.tfvars に書く（コミットしない）。
variable "my_ip" {
  description = "Your global IP in CIDR format for SSH access (e.g. 203.0.113.10/32)"
  type        = string
}

# 障害演習の再現性を保つため AMI は固定する。
variable "ami_id" {
  description = "AMI ID (Amazon Linux 2023, ap-northeast-1). al2023-ami-2023.12.20260831.0-kernel-6.18-x86_64"
  type        = string
  default     = "ami-0794a632d5c1058bf"
}
