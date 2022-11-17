resource "aws_autoscaling_group" "bar" {
  name                      = "asg-demo-10pm"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 100
  health_check_type         = "ELB"
  desired_capacity          = 2
  #   force_delete              = true
  #   placement_group           = aws_placement_group.test.id
  launch_configuration = aws_launch_configuration.as_conf.name
  vpc_zone_identifier  = [aws_subnet.sub1.id, aws_subnet.sub2.id, aws_subnet.sub3.id, aws_subnet.sub4.id, aws_subnet.sub5.id]
  load_balancers       = [aws_elb.elb_demo.id]

  tag {
    key                 = "Name"
    value               = "asg-demo-10pm"
    propagate_at_launch = true
  }

  #   timeouts {
  #     delete = "15m"
  #   }

  #   tag {
  #     key                 = "lorem"
  #     value               = "ipsum"
  #     propagate_at_launch = false
  #   }
}




