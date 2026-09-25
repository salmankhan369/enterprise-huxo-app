variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Base project name used across all AWS resources"
  type        = string
  default     = "enterprise-huxo-app"
}