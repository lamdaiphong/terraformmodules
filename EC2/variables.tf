variable "sg_ad_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [389, 636, 445, 3268, 3269]
}
variable "sg_secure_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [22]
}
locals {
    description = "list of ingress secure ports"
    lc_sg_secure_ports = [22]
}
variable "sg_web_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [80,8080,8081,443]
}

variable "istest" {
    default = true
}

variable "instance_type" {
  default = "t2.micro"
}

locals {
  common_tags = {
    Owner   = "DevOps Team"
    service = "backend"
  }
}

variable "wrkspace_map" {
  type = map(string)
  default = {
    default = "t2.micro"
    dev = "t2.nano"
    prod = "t2.large"
  }
}