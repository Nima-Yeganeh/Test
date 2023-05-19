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

resource "aws_apigatewayv2_api" "example_apiaws1" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws1
}
resource "aws_apigatewayv2_route" "example_routeaws1" {
  api_id    = aws_apigatewayv2_api.example_apiaws1.id
  route_key = "GET /example"
  provider = aws.aws1
}
resource "aws_apigatewayv2_integration" "example_integrationaws1" {
  api_id            = aws_apigatewayv2_api.example_apiaws1.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws1,
  ]
  provider = aws.aws1
}
resource "aws_apigatewayv2_stage" "example_stageaws1" {
  api_id      = aws_apigatewayv2_api.example_apiaws1.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws1,
  ]
  provider = aws.aws1
}

resource "aws_apigatewayv2_api" "example_apiaws2" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws2
}
resource "aws_apigatewayv2_route" "example_routeaws2" {
  api_id    = aws_apigatewayv2_api.example_apiaws2.id
  route_key = "GET /example"
  provider = aws.aws2
}
resource "aws_apigatewayv2_integration" "example_integrationaws2" {
  api_id            = aws_apigatewayv2_api.example_apiaws2.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws2,
  ]
  provider = aws.aws2
}
resource "aws_apigatewayv2_stage" "example_stageaws2" {
  api_id      = aws_apigatewayv2_api.example_apiaws2.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws2,
  ]
  provider = aws.aws2
}

