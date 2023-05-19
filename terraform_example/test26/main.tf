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

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws2
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws2
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws2
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws2
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws3
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws3
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws3
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws3
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws4
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws4
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws4
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws4
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws5
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws5
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws5
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws5
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws6
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws6
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws6
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws6
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws7
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws7
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws7
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws7
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws8
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws8
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws8
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws8
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws9
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws9
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws9
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws9
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws10
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws10
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws10
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws10
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws11
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws11
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws11
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws11
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws12
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws12
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws12
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws12
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws13
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws13
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws13
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws13
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws14
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws14
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws14
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws14
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws15
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws15
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws15
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws15
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws16
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws16
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws16
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws16
}

resource "aws_apigatewayv2_api" "example_api" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws17
}
resource "aws_apigatewayv2_route" "example_route" {
  api_id    = aws_apigatewayv2_api.example_api.id
  route_key = "GET /example"
  provider = aws.aws17
}
resource "aws_apigatewayv2_integration" "example_integration" {
  api_id            = aws_apigatewayv2_api.example_api.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_route,
  ]
  provider = aws.aws17
}
resource "aws_apigatewayv2_stage" "example_stage" {
  api_id      = aws_apigatewayv2_api.example_api.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integration,
  ]
  provider = aws.aws17
}

