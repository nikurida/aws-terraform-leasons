locals {
  instance_number = lookup(var.instace_number, var.env)

  file_ext = "zip"

  object_name = "meu-arquivo-gerado-de-um-template"

  common_tags = {
    Owner = "Ricardo"
    Year  = "2024"
  }
}
