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



