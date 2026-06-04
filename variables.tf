variable "location" {
  type    = string
  default = "West US"
}

variable "rg_name" {
  type    = string
  default = "kml_rg_main-6bcb0c7dca7046f9"
}

variable "prefix" {
  type    = string
  default = "demo"
}

variable "kubernetes_version" {
  type    = string
  default = "1.33.6"
}
