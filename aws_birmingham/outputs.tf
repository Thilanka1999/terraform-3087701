output "sagemaker_model" {
  value       = aws_sagemaker_model.xgboost_model.name
  description = "SageMaker model name"
}

output "sagemaker_endpoint" {
  value       = aws_sagemaker_endpoint.xgboost_endpoint.name
  description = "SageMaker endpoint name"
}