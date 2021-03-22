# Cluster

output "arn" {
  description = "Full ARN of the repository"
  value       = aws_ecs_cluster.main.arn
}

output "cluster_id" {
  description = "The registry ID where the repository was created"
  value       = aws_ecs_cluster.main.id
}