resource "aws_elb" "elb_demo" {
  name            = "terraform-elb-10pm"
  security_groups = [aws_security_group.my_sg.id]
  subnets         = [aws_subnet.sub1.id, aws_subnet.sub2.id, aws_subnet.sub3.id, aws_subnet.sub4.id, aws_subnet.sub5.id]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  #   instances                   = [aws_instance.web_server1.id, aws_instance.web_server2.id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "terraform-elb-10pm"
  }
}