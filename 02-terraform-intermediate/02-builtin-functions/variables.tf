variable "env" {}

variable "aws_region" {
  type = string

  description = ""

  default = "sa-east-1"
}

variable "instance_ami" {
  type    = string
  default = "ami-0c39cfd0df707c16c"

  validation {
    condition = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"

    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami\"."
  }
}

variable "instace_number" {
  type = object({
    dev  = number
    prod = number
  })

  description = "Number of instances to create"

  default = {
    dev  = 1
    prod = 3
  }

}

variable "instace_type" {
  type = object({
    dev  = string
    prod = string
  })

  description = ""

  default = {
    dev  = "t3.micro"
    prod = "t3.medium"
  }
}

