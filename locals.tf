locals {
  name="${var.project_name}-${var.environment}"
  az_names=slice(data.aws_availability_zones.azs.names, 0, 2)      #slice(list, 0, 2)=0,1
}