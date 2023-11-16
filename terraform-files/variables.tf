variable "project_id" {
  type        = string
  description = "Google Cloud project ID"
  default     = "coffee-project-404417"

}

variable "region" {
  type        = string
  description = "Google Cloud region"
  default     = "us-east1"
}

variable "zone" {
  type        = string
  description = "Google Cloud zone"
  default     = "us-east1-b"
}

variable "machine_type" {
  type        = string
  description = "Instance machine type"
  default     = "e2-micro"
}

variable "image" {
  type        = string
  description = "Instance image"
  default     = "debian-11-bullseye-v20231010"
}

variable "public_key" {
  type        = string
  description = "Key path"
  default     = "~/ssh/id_rsa.pub"
}

variable "private_key" {
  type        = string
  description = "Key path"
  default     = "~/ssh/id_rsa"
}
