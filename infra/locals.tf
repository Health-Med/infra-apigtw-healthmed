locals {
  api_healthmed_endpoints_doctor = {
    new_doctor                 = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/doctors"
    all_doctors                = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/doctors/query"
    schedule_by_month          = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/schedule/{doctorId}/{year}/{month}"
    schedule_by_month_day      = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/schedule/{doctorId}/{year}/{month}/{day}"
    schedule_by_month_day_hour = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/schedule/{doctorId}/{year}/{month}/{day}/{hour}"
    schedule_confirmation      = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/schedule/{doctorId}"
    new_schedule               = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/schedule/{doctorId}"
  }

  api_healthmed_endpoints_patient = {
    new_patient          = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/patients"
    patient_by_id        = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/patients/{patientId}"
    patient_by_parameter = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/patients/query"
    schedule_registered  = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/schedule/checkout"
    schedule_canceled    = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_healthmed_port}/api/schedule/patient/REJECTED"
  }
}