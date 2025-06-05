output "azs" {
  value = data.aws_availability_zones.azs.names
}
#output "public-subnet-id-1" {
#  value = aws_subnet.public[0].id
#}
#output "public-subnet-id-2" {
# value = aws_subnet.public[1].id
#}
output "public-subnet-ids" {
  value = aws_subnet.public[*].id
}
#output "private-subnet-id-1" {
#  value = aws_subnet.private[0].id
#}
#output "private-subnet-id-2" {
#  value = aws_subnet.private[1].id
#}
output "private-subnet-ids" {
  value = aws_subnet.private[*].id
}
#output "database-subnet-id-1" {
#  value = aws_subnet.database[0].id
#}
#output "database-subnet-id-2" {
#  value = aws_subnet.database[1].id
#}
output "database-subnet-ids" {
  value = aws_subnet.database[*].id
}
output "vpc-id" {
  value = aws_vpc.main.id
}
output "igw-id" {
  value = aws_internet_gateway.gw.id
}
output "ngw-id" {
  value = aws_nat_gateway.ngw.id
}
output "public-route-table-id" {
  value = aws_route_table.public.id
}
output "private-route-table-id" {
  value = aws_route_table.private.id
}
output "database-route-table-id" {
  value = aws_route_table.database.id
}
output "default-vpc-id" {
  value = data.aws_vpc.default.id
}
output "default-vpc-cidr-block" {
  value = data.aws_vpc.default.cidr_block
}
output "vpc-peering-id" {
  value = aws_vpc_peering_connection.roboshop-default[0].id
}

