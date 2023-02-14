resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = <<EOF
  Hello Terraform! 
  I'm Sandro Santos, a fullstack software engineer 
  ${var.content} 
  ${var.content_from_env}
  ${var.content_test}
  ${var.content_test2}
  EOF
}

variable "content" {}

variable "content_from_env" {}

variable "content_test" {
  type = string 
  default = "hello world"
}

variable "content_test2" {
  type = string 
}