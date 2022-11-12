resource "aws_autoscaling_policy" "asp" {
  name                   = "asp-demo"
  scaling_adjustment     = 0
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.bar.name
}