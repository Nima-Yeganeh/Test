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

resource "aws_apigatewayv2_api" "example_apiaws3" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws3
}
resource "aws_apigatewayv2_route" "example_routeaws3" {
  api_id    = aws_apigatewayv2_api.example_apiaws3.id
  route_key = "GET /example"
  provider = aws.aws3
}
resource "aws_apigatewayv2_integration" "example_integrationaws3" {
  api_id            = aws_apigatewayv2_api.example_apiaws3.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws3,
  ]
  provider = aws.aws3
}
resource "aws_apigatewayv2_stage" "example_stageaws3" {
  api_id      = aws_apigatewayv2_api.example_apiaws3.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws3,
  ]
  provider = aws.aws3
}

resource "aws_apigatewayv2_api" "example_apiaws4" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws4
}
resource "aws_apigatewayv2_route" "example_routeaws4" {
  api_id    = aws_apigatewayv2_api.example_apiaws4.id
  route_key = "GET /example"
  provider = aws.aws4
}
resource "aws_apigatewayv2_integration" "example_integrationaws4" {
  api_id            = aws_apigatewayv2_api.example_apiaws4.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws4,
  ]
  provider = aws.aws4
}
resource "aws_apigatewayv2_stage" "example_stageaws4" {
  api_id      = aws_apigatewayv2_api.example_apiaws4.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws4,
  ]
  provider = aws.aws4
}

resource "aws_apigatewayv2_api" "example_apiaws5" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws5
}
resource "aws_apigatewayv2_route" "example_routeaws5" {
  api_id    = aws_apigatewayv2_api.example_apiaws5.id
  route_key = "GET /example"
  provider = aws.aws5
}
resource "aws_apigatewayv2_integration" "example_integrationaws5" {
  api_id            = aws_apigatewayv2_api.example_apiaws5.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws5,
  ]
  provider = aws.aws5
}
resource "aws_apigatewayv2_stage" "example_stageaws5" {
  api_id      = aws_apigatewayv2_api.example_apiaws5.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws5,
  ]
  provider = aws.aws5
}

resource "aws_apigatewayv2_api" "example_apiaws6" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws6
}
resource "aws_apigatewayv2_route" "example_routeaws6" {
  api_id    = aws_apigatewayv2_api.example_apiaws6.id
  route_key = "GET /example"
  provider = aws.aws6
}
resource "aws_apigatewayv2_integration" "example_integrationaws6" {
  api_id            = aws_apigatewayv2_api.example_apiaws6.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws6,
  ]
  provider = aws.aws6
}
resource "aws_apigatewayv2_stage" "example_stageaws6" {
  api_id      = aws_apigatewayv2_api.example_apiaws6.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws6,
  ]
  provider = aws.aws6
}

resource "aws_apigatewayv2_api" "example_apiaws7" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws7
}
resource "aws_apigatewayv2_route" "example_routeaws7" {
  api_id    = aws_apigatewayv2_api.example_apiaws7.id
  route_key = "GET /example"
  provider = aws.aws7
}
resource "aws_apigatewayv2_integration" "example_integrationaws7" {
  api_id            = aws_apigatewayv2_api.example_apiaws7.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws7,
  ]
  provider = aws.aws7
}
resource "aws_apigatewayv2_stage" "example_stageaws7" {
  api_id      = aws_apigatewayv2_api.example_apiaws7.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws7,
  ]
  provider = aws.aws7
}

resource "aws_apigatewayv2_api" "example_apiaws8" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws8
}
resource "aws_apigatewayv2_route" "example_routeaws8" {
  api_id    = aws_apigatewayv2_api.example_apiaws8.id
  route_key = "GET /example"
  provider = aws.aws8
}
resource "aws_apigatewayv2_integration" "example_integrationaws8" {
  api_id            = aws_apigatewayv2_api.example_apiaws8.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws8,
  ]
  provider = aws.aws8
}
resource "aws_apigatewayv2_stage" "example_stageaws8" {
  api_id      = aws_apigatewayv2_api.example_apiaws8.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws8,
  ]
  provider = aws.aws8
}

resource "aws_apigatewayv2_api" "example_apiaws9" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws9
}
resource "aws_apigatewayv2_route" "example_routeaws9" {
  api_id    = aws_apigatewayv2_api.example_apiaws9.id
  route_key = "GET /example"
  provider = aws.aws9
}
resource "aws_apigatewayv2_integration" "example_integrationaws9" {
  api_id            = aws_apigatewayv2_api.example_apiaws9.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws9,
  ]
  provider = aws.aws9
}
resource "aws_apigatewayv2_stage" "example_stageaws9" {
  api_id      = aws_apigatewayv2_api.example_apiaws9.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws9,
  ]
  provider = aws.aws9
}

resource "aws_apigatewayv2_api" "example_apiaws10" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws10
}
resource "aws_apigatewayv2_route" "example_routeaws10" {
  api_id    = aws_apigatewayv2_api.example_apiaws10.id
  route_key = "GET /example"
  provider = aws.aws10
}
resource "aws_apigatewayv2_integration" "example_integrationaws10" {
  api_id            = aws_apigatewayv2_api.example_apiaws10.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws10,
  ]
  provider = aws.aws10
}
resource "aws_apigatewayv2_stage" "example_stageaws10" {
  api_id      = aws_apigatewayv2_api.example_apiaws10.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws10,
  ]
  provider = aws.aws10
}

resource "aws_apigatewayv2_api" "example_apiaws11" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws11
}
resource "aws_apigatewayv2_route" "example_routeaws11" {
  api_id    = aws_apigatewayv2_api.example_apiaws11.id
  route_key = "GET /example"
  provider = aws.aws11
}
resource "aws_apigatewayv2_integration" "example_integrationaws11" {
  api_id            = aws_apigatewayv2_api.example_apiaws11.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws11,
  ]
  provider = aws.aws11
}
resource "aws_apigatewayv2_stage" "example_stageaws11" {
  api_id      = aws_apigatewayv2_api.example_apiaws11.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws11,
  ]
  provider = aws.aws11
}

resource "aws_apigatewayv2_api" "example_apiaws12" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws12
}
resource "aws_apigatewayv2_route" "example_routeaws12" {
  api_id    = aws_apigatewayv2_api.example_apiaws12.id
  route_key = "GET /example"
  provider = aws.aws12
}
resource "aws_apigatewayv2_integration" "example_integrationaws12" {
  api_id            = aws_apigatewayv2_api.example_apiaws12.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws12,
  ]
  provider = aws.aws12
}
resource "aws_apigatewayv2_stage" "example_stageaws12" {
  api_id      = aws_apigatewayv2_api.example_apiaws12.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws12,
  ]
  provider = aws.aws12
}

resource "aws_apigatewayv2_api" "example_apiaws13" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws13
}
resource "aws_apigatewayv2_route" "example_routeaws13" {
  api_id    = aws_apigatewayv2_api.example_apiaws13.id
  route_key = "GET /example"
  provider = aws.aws13
}
resource "aws_apigatewayv2_integration" "example_integrationaws13" {
  api_id            = aws_apigatewayv2_api.example_apiaws13.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws13,
  ]
  provider = aws.aws13
}
resource "aws_apigatewayv2_stage" "example_stageaws13" {
  api_id      = aws_apigatewayv2_api.example_apiaws13.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws13,
  ]
  provider = aws.aws13
}

resource "aws_apigatewayv2_api" "example_apiaws14" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws14
}
resource "aws_apigatewayv2_route" "example_routeaws14" {
  api_id    = aws_apigatewayv2_api.example_apiaws14.id
  route_key = "GET /example"
  provider = aws.aws14
}
resource "aws_apigatewayv2_integration" "example_integrationaws14" {
  api_id            = aws_apigatewayv2_api.example_apiaws14.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws14,
  ]
  provider = aws.aws14
}
resource "aws_apigatewayv2_stage" "example_stageaws14" {
  api_id      = aws_apigatewayv2_api.example_apiaws14.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws14,
  ]
  provider = aws.aws14
}

resource "aws_apigatewayv2_api" "example_apiaws15" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws15
}
resource "aws_apigatewayv2_route" "example_routeaws15" {
  api_id    = aws_apigatewayv2_api.example_apiaws15.id
  route_key = "GET /example"
  provider = aws.aws15
}
resource "aws_apigatewayv2_integration" "example_integrationaws15" {
  api_id            = aws_apigatewayv2_api.example_apiaws15.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws15,
  ]
  provider = aws.aws15
}
resource "aws_apigatewayv2_stage" "example_stageaws15" {
  api_id      = aws_apigatewayv2_api.example_apiaws15.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws15,
  ]
  provider = aws.aws15
}

resource "aws_apigatewayv2_api" "example_apiaws16" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws16
}
resource "aws_apigatewayv2_route" "example_routeaws16" {
  api_id    = aws_apigatewayv2_api.example_apiaws16.id
  route_key = "GET /example"
  provider = aws.aws16
}
resource "aws_apigatewayv2_integration" "example_integrationaws16" {
  api_id            = aws_apigatewayv2_api.example_apiaws16.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws16,
  ]
  provider = aws.aws16
}
resource "aws_apigatewayv2_stage" "example_stageaws16" {
  api_id      = aws_apigatewayv2_api.example_apiaws16.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws16,
  ]
  provider = aws.aws16
}

resource "aws_apigatewayv2_api" "example_apiaws17" {
  name          = "example-api"
  protocol_type = "HTTP"
  provider = aws.aws17
}
resource "aws_apigatewayv2_route" "example_routeaws17" {
  api_id    = aws_apigatewayv2_api.example_apiaws17.id
  route_key = "GET /example"
  provider = aws.aws17
}
resource "aws_apigatewayv2_integration" "example_integrationaws17" {
  api_id            = aws_apigatewayv2_api.example_apiaws17.id
  integration_type  = "HTTP_PROXY"
  integration_uri   = "https://jsonplaceholder.typicode.com"
  integration_method = "GET"
  depends_on = [
    aws_apigatewayv2_route.example_routeaws17,
  ]
  provider = aws.aws17
}
resource "aws_apigatewayv2_stage" "example_stageaws17" {
  api_id      = aws_apigatewayv2_api.example_apiaws17.id
  name        = "dev"
  auto_deploy = true
  depends_on = [
    aws_apigatewayv2_integration.example_integrationaws17,
  ]
  provider = aws.aws17
}

