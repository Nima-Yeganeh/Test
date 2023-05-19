provider "aws" {
  region = "us-east-1"
}

resource "aws_apigatewayv2_api" "example_api" {
  count         = 20
  name          = "example-api-${count.index}"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_route" "example_route" {
  count     = 20
  api_id    = aws_apigatewayv2_api.example_api[count.index].id
  route_key = "GET /example"
}

resource "aws_apigatewayv2_integration" "example_integration" {
  count             = 20
  api_id            = aws_apigatewayv2_api.example_api[count.index].id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  
  depends_on = [
    aws_apigatewayv2_route.example_route[count.index],
  ]
}

resource "aws_apigatewayv2_stage" "example_stage" {
  count       = 20
  api_id      = aws_apigatewayv2_api.example_api[count.index].id
  name        = "dev"
  auto_deploy = true
  
  depends_on = [
aws_apigatewayv2_integration.example_integration[${count.index}],
    aws_apigatewayv2_route.example_route[${count.index}],
  ]
}
