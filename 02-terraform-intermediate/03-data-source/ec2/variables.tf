variable "aws_region" {
  type        = string
  description = ""
  default     = "sa-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t4g.micro"
}