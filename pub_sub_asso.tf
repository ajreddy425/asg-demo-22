resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.sub3.id
  route_table_id = aws_route_table.pub_rt.id
}
resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.sub4.id
  route_table_id = aws_route_table.pub_rt.id
}
resource "aws_route_table_association" "e" {
  subnet_id      = aws_subnet.sub5.id
  route_table_id = aws_route_table.pub_rt.id
}