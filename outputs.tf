output cluster_arn {
  value = concat(aws_ecs_cluster.this.*.arn, [""])[0]
}

output service_name {
  value = aws_ecs_service.this.name
}
