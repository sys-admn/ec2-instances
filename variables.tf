variable "aws_region" {
  description = "The region to deploy the infrastructure"
  type        = string
  default     = "eu-west-3"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"

}
variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}
variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "eu-west-3a" #Paris
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
variable "ami_id" {
  description = "he name of the key pair for SSH access"
  type        = string
  default     = "ami-0eaf62527f5bb8940"
}
variable "key_name" {
  type        = string
  description = "The private key content for the EC2 instance"
  default     = "amikey"
}

