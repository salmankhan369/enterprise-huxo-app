output "cluster_name" {
  description = "EKS Cluster Name"
  value       = aws_eks_cluster.eks.name
}

output "ecr_repository_url" {
  description = "ECR Repository URI"
  value       = aws_ecr_repository.app_repo.repository_url
}

output "s3_bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.project_bucket.id
}