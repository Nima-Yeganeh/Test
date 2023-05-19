provider "aws" {
  region = "us-east-1"
  alias = aws1
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws1
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws1
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws1
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws1
}
