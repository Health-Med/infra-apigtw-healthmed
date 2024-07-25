#ROUTES DOCTOR
resource "aws_apigatewayv2_integration" "alb_integration_new_doctor" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_doctor.new_doctor
  integration_method     = "POST"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_new_doctor" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "POST /doctors"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_new_doctor.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_doctor_new_schedule" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_doctor.new_schedule
  integration_method     = "POST"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_doctor_new_schedule" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "POST /doctors-schedule/{doctorId}"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_doctor_new_schedule.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_doctor_schedule_by_month" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_doctor.schedule_by_month
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_schedule_by_month" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "GET /doctors-schedule/{doctorId}/{year}/{month}"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_doctor_schedule_by_month.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_doctor_schedule_by_month_and_day" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_doctor.schedule_by_month_day
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_schedule_by_month_day" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "GET /doctors-schedule/{doctorId}/{year}/{month}/{day}"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_doctor_schedule_by_month_and_day.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_doctor_schedule_by_month_and_day_hour" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_doctor.schedule_by_month_day_hour
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_schedule_by_month_day_hour" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "GET /doctors-schedule/{doctorId}/{year}/{month}/{day}/{hour}"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_doctor_schedule_by_month_and_day_hour.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_doctor_confirmation_schedule" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_doctor.schedule_confirmation
  integration_method     = "PUT"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_doctor_schedule_confirmation" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "PUT /doctors-schedule/{doctorId}"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_doctor_confirmation_schedule.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_get_doctor" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_doctor.all_doctors
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_all_doctors" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "GET /doctors"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_get_doctor.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

#ROUTES PATIENT
resource "aws_apigatewayv2_integration" "alb_integration_new_patient" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_patient.new_patient
  integration_method     = "POST"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_new_patient" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "POST /patients"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_new_patient.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_get_patient_by_id" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_patient.patient_by_id
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_get_patient_by_id" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "GET /patients/{patientId}"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_get_patient_by_id.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_get_patient" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_patient.patient_by_parameter
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_get_patient" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "GET /patients"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_get_patient.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_patient_schedule" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_patient.schedule_registered
  integration_method     = "POST"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_patient_schedule" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "POST /patients-schedule"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_patient_schedule.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}

resource "aws_apigatewayv2_integration" "alb_integration_patient_schedule_canceled" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.api_healthmed_endpoints_patient.schedule_canceled
  integration_method     = "PUT"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_patient_schedule_canceled" {
  api_id             = aws_apigatewayv2_api.api_gateway.id
  route_key          = "PUT /patients-schedule"
  target             = "integrations/${aws_apigatewayv2_integration.alb_integration_patient_schedule_canceled.id}"
  authorization_type = "JWT"
  authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
}
