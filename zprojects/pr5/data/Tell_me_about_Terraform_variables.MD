Terraform variables are parameters that can be defined to make your Terraform configurations more dynamic and reusable. Variables allow you to pass values into your Terraform configuration at runtime, instead of hardcoding them in your code.

There are several types of variables that can be used in Terraform, including string variables, number variables, boolean variables, and complex variables.

To define a Terraform variable, you can use the `variable` block in your configuration file, like this:

```
variable "my_var" {
  type = string
  default = "default_value"
}
```

You can then use this variable in your configuration by referencing it using the `${var.my_var}` syntax. For example, you could use it to set a resource name:

```
resource "aws_instance" "my_instance" {
   ami           = "ami-0c55b159cbfafe1f0"
   instance_type = "t2.micro"
   tags = {
      Name = "${var.my_var}-instance"
   }
}
```
