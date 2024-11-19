variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
  default     = "ami-0b8c6b923777519db"
}

variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
  default     = "t2.large"
}


variable "key_name" {
  description = "The key name for the Jenkins server"
  type        = string
  default     = "training36"
}

###########################
#Sonaqube instance
##########################
variable "security_group_id" {
  type    = string
  default = "sg-07b8b3043804ede33"
}
variable "db_name" {
  description = "The name of the PostgreSQL database"
  type        = string
  default = "ddsonarqube"
}

variable "db_username" {
  description = "The username for the PostgreSQL database"
  type        = string
  default = "ddsonar"
}

variable "db_password" {
  description = "The password for the PostgreSQL database"
  type        = string
  sensitive   = true
  default = "Team@123"
}

# variable "subnet_id" {
#   type    = string
#   default = "subnet-036b6ddb502f8eb8a"
# }

# variable "security_group_id" {
#   description = "The security group ID to attach to the instance"
#   type        = string

# }
##################
#sonarqube db 
###################
variable "subnet_id" {
  description = "The subnet ID where the instance will be deployed"
  type        = string
  default     = "subnet-0ea3d234fba84eef9"
}


# variable "db_security_group_id" {
#   description = "The security group ID for the PostgreSQL database"
#   type        = list(string)
#   default     = ["sg-0f424207f7b50b172"]
# }

# variable "db_subnet_group" {
#   description = "The subnet group for the PostgreSQL database"
#   type        = string
#   default     = "default-vpc-08dcf780b5e752f2c"
# }
variable "db_security_group_id" {
  description = "The security group ID for the PostgreSQL database"
  type    = list(string)
  default = ["sg-08832623feec1c320"]
}

variable "db_subnet_group_name" {
  description = "The subnet group for the PostgreSQL database"
  type        = string
  default = "db_subnet_group"
}
variable "s3_bucket" {
  description = "The name of the S3 bucket for storing Terraform state"
  type        = string
  default     = "terraform-state-bucket-tadah"
}

variable "dynamodb_table" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "terraform-lock-table"
}

variable "main-region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}
