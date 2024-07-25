variable "aws_region" {
  type        = string
  description = "Regiao da aws onde os recursos são provisionados"
  default     = "us-east-1"
}

variable "apigtw_name" {
  type        = string
  description = "Nome do api gateway"
  default     = "apigtw-healthmed"
}

variable "alb_name" {
  type        = string
  description = "Nome do application load balancer das tarefas ecs"
  default     = "ALB-healthmed"
}

variable "cognito_healthmed_name" {
  type        = string
  description = "Nome do cognito user pool do healthmed"
  default     = "healthmed-user-pool"
}

variable "cognito_user_pool_id" {
  type        = string
  description = "id do cognito user pool do healthmed"
  default     = "us-east-1_oKIDi6AP1"
}

variable "api_healthmed_port" {
  type        = string
  description = "porta onde o microserviço de order é exposto"
  default     = "8022"
}

variable "client_id_cognito_user_pool" {
  type        = string
  description = "id do client do cognito user pool"
  default     = "48ebrn1j0g3qkmv9ca6hv35s75"
}
