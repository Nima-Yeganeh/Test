provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

provider "aws" {
  region = "us-east-2"
  alias = "aws2"
}

provider "aws" {
  region = "us-west-1"
  alias = "aws3"
}

provider "aws" {
  region = "us-west-2"
  alias = "aws4"
}

provider "aws" {
  region = "ap-south-1"
  alias = "aws5"
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "aws6"
}

provider "aws" {
  region = "ap-northeast-2"
  alias = "aws7"
}

provider "aws" {
  region = "ap-northeast-3"
  alias = "aws8"
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "aws9"
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "aws10"
}

provider "aws" {
  region = "ca-central-1"
  alias = "aws11"
}

provider "aws" {
  region = "eu-central-1"
  alias = "aws12"
}

provider "aws" {
  region = "eu-west-1"
  alias = "aws13"
}

provider "aws" {
  region = "eu-west-2"
  alias = "aws14"
}

provider "aws" {
  region = "eu-west-3"
  alias = "aws15"
}

provider "aws" {
  region = "eu-north-1"
  alias = "aws16"
}

provider "aws" {
  region = "sa-east-1"
  alias = "aws17"
}

resource "aws_apigatewayv2_api" "example_api1" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws1
}
resource "aws_apigatewayv2_route" "example_route1" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws1
}
resource "aws_apigatewayv2_integration" "example_integration1" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws1
}
resource "aws_apigatewayv2_stage" "example_stage1" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws1
}

resource "aws_apigatewayv2_api" "example_api2" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws2
}
resource "aws_apigatewayv2_route" "example_route2" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws2
}
resource "aws_apigatewayv2_integration" "example_integration2" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws2
}
resource "aws_apigatewayv2_stage" "example_stage2" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws2
}

resource "aws_apigatewayv2_api" "example_api3" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws3
}
resource "aws_apigatewayv2_route" "example_route3" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws3
}
resource "aws_apigatewayv2_integration" "example_integration3" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws3
}
resource "aws_apigatewayv2_stage" "example_stage3" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws3
}

resource "aws_apigatewayv2_api" "example_api4" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws4
}
resource "aws_apigatewayv2_route" "example_route4" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws4
}
resource "aws_apigatewayv2_integration" "example_integration4" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws4
}
resource "aws_apigatewayv2_stage" "example_stage4" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws4
}

