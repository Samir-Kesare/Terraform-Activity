output "nat_id" {
  value = aws_nat_gateway.nat.*.id
}

output "eip_id" {
  value = aws_eip.eip.*.id
}
