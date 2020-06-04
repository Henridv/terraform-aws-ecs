resource "aws_ecs_cluster" "this" {
  count = var.create_cluster ? 1 : 0
  name  = "${var.name}-cluster"
  tags  = var.tags
}

resource "aws_ecs_service" "this" {
  name            = "${var.name}-service"
  cluster         = var.create_cluster ? aws_ecs_cluster.this.*.arn[0] : var.cluster_arn
  task_definition = var.task_definition
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    assign_public_ip = true
    subnets          = var.subnets
    security_groups  = var.security_groups
  }

  load_balancer {
    target_group_arn = var.target_group
    container_name   = var.container_name
    container_port   = var.port
  }

  deployment_controller {
    type = "ECS"
  }
}
