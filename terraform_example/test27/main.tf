provider "aws" {
  region = "us-east-1"
}

resource "aws_prometheus_workspace" "example_workspace" {
  name           = "example-workspace"
  retention_days = 30
}

resource "aws_prometheus_workspace_user" "example_user" {
  workspace_id = aws_prometheus_workspace.example_workspace.id
  username     = "example-user"
  password     = "password123"
  groups       = ["Admin"]
}

resource "aws_prometheus_workspace_alert_manager_definition" "example_alert_manager" {
  workspace_id = aws_prometheus_workspace.example_workspace.id
  name         = "example-alert-manager"
  rules        = <<-EOT
    groups:
    - name: example-group
      rules:
      - alert: HighErrorRate
        expr: sum by (service)(http_requests_total{status_code=~"5.."})
          / sum by (service)(http_requests_total) > 0.05
        for: 5m
        labels:
          severity: warning
        annotations:
          summary: High error rate on {{ $labels.service }}
          description: '{{ $labels.service }} has a high error rate ({{ $value }})'
  EOT
}

resource "aws_prometheus_workspace_rule_groups_definition" "example_rule_group" {
  workspace_id = aws_prometheus_workspace.example_workspace.id
  name         ="example-rule-group"
  rules        = <<-EOT
    - name: example-rule
      rules:
      - alert: ExampleAlert
        expr: vector(1)
        for: 1m
        labels:
          severity: warning
        annotations:
          summary: Example alert
          description: This is an example alert
  EOT
}
