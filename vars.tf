# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
# Defining CIDR Block for 1st Subnet
variable "subnet1_cidr" {
  default = "10.0.1.0/24"
}
# Defining CIDR Block for 2nd Subnet
variable "subnet2_cidr" {
  default = "10.0.2.0/24"
}
# Defining CIDR Block for 3rd Subnet
variable "subnet3_cidr" {
  default = "10.0.3.0/24"
}
# Defining CIDR Block for 4rd Subnet
variable "subnet4_cidr" {
  default = "10.0.4.0/24"
}
# Defining CIDR Block for 5rd Subnet
variable "subnet5_cidr" {
  default = "10.0.5.0/24"
}
# Defining CIDR Block for 6rd Subnet
variable "subnet6_cidr" {
  default = "10.0.6.0/24"
}

# Defining RDS Username
variable "username" {
  default = "admin"
}

# Defining RDS Password
variable "password" {
  default = "Admin@2025"
}