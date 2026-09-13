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
