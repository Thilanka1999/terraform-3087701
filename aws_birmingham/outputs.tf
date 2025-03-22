output "sagemaker_model" {
  value = aws_sagemaker_model.xgboost_model.name
  description = "SageMaker model name"
}
