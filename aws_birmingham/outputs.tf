output "sagemaker_endpoint" {
  value = aws_sagemaker_endpoint.xgboost_endpoint.name
  description = "SageMaker endpoint for predictions"
}
