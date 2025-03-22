resource "aws_sagemaker_model" "xgboost_model" {
  name = var.endpoint_name

  execution_role_arn = var.role_arn

  primary_container {
    image = "720646828776.dkr.ecr.ap-south-1.amazonaws.com/sagemaker-xgboost:1.7-1"
    model_data_url = var.model_data_path

    environment = {
      SAGEMAKER_PROGRAM    = var.entry_point
      SAGEMAKER_SUBMIT_DIRECTORY = var.source_dir
    }
  }
}

# SageMaker Endpoint Configuration
resource "aws_sagemaker_endpoint_configuration" "xgboost_endpoint_config" {
  name = "${var.endpoint_name}-config"

  production_variants {
    variant_name           = "variant-1"
    model_name             = aws_sagemaker_model.xgboost_model.name
    instance_type          = var.instance_type
    initial_instance_count = var.instance_count
  }
}

# SageMaker Endpoint
resource "aws_sagemaker_endpoint" "xgboost_endpoint" {
  name                 = var.endpoint_name
  endpoint_config_name = aws_sagemaker_endpoint_configuration.xgboost_endpoint_config.name

  tags = {
    Name = "Customer Credit Risk Endpoint"
  }
}



