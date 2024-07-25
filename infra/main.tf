resource "aws_apigatewayv2_api" "api_gateway" {
  name          = var.apigtw_name
  description   = "Api gateway do sistema de saúde healthmed"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "stage" {
  api_id      = aws_apigatewayv2_api.api_gateway.id
  name        = "dev"
  auto_deploy = true
}

resource "aws_apigatewayv2_authorizer" "cognito_authorizer" {
  api_id          = aws_apigatewayv2_api.api_gateway.id
  name            = "cognito-authorizer"
  authorizer_type = "JWT"
  identity_sources = ["$request.header.Authorization"]

  jwt_configuration {
    audience = [var.client_id_cognito_user_pool]
    issuer   = "https://cognito-idp.${var.aws_region}.amazonaws.com/${var.cognito_user_pool_id}"
  }
}
