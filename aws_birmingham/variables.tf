variable "role_arn" {
  description = "SageMaker execution role ARN"
  type        = string
  default     = "arn:aws:iam::796932308591:role/service-role/SageMaker-ExecutionRole-20250214T145019"
}

variable "model_data_path" {
  description = "S3 path to the trained XGBoost model"
  type        = string
  default     = "s3://mitrailabs-personaclassification/risk_prediction/Birmingham/bin/model.tar.gz"
}

variable "instance_type" {
  description = "SageMaker instance type"
  type        = string
  default     = "ml.m5.large"
}

variable "instance_count" {
  description = "Number of instances"
  type        = number
  default     = 1
}

variable "endpoint_name" {
  description = "SageMaker endpoint name"
  type        = string
  default     = "customer-creditrisk-V2"

}

variable "source_dir" {
  description = "Source directory for inference code"
  type        = string
  default     = "s3://mitrailabs-personaclassification/risk_prediction/Birmingham/bin/models"

}

variable "entry_point" {
  description = "Inference script entry point"
  type        = string
  default     = "inference.py"

}

