variable "access_key" {
  description = "The access key for the cloud user"
  type        = string
  sensitive = true
}

variable "secret_key" {
  description = "The secret key for the cloud user"
  type        = string
  sensitive = true
}

variable "ami-id" {
  description = "AMI ID of ubuntu 18.04LTS eu-west-1"
  default     = "ami-02df9ea15c1778c9c"
}

variable "instance-type" {
  description = "Free tier EC2 Instance type"
  default     = "t2.micro"
}

variable "pem-key" {
  description = "Associated Key to SSH into the EC2 Instance"
  default     = "dont_touch"
}