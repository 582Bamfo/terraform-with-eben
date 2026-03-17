variable "my_favorite_number" {
  type    = number
  default = 7

}

variable "name" {
  type    = string
  default = "bob"
}

variable "my_list" {
  type    = list(number)
  default = [1, 5, 6, 8, 10, 3, 2]

}

variable "my_instances" {
  type = map(object({
    instance_type = string
    ami           = string
  }))
}

variable "create_instance" {
  type = bool
}

variable "my_number_of_instances" {
  default = 4
}

# Keep your variables in a separate file (usually variables.tf)
# use descriptive names
# use a type
# use a description
# use a default value when appropriate
# don't add tfvars file to your VCS if they have sensitive values
# don't hardcode sensitive values
# use variable validations

variable "eu_region" {
  type        = string
  description = "This is my EU region"
  default     = "eu-west-1"
  validation {
    condition     = length(var.eu_region) > 6
    error_message = "You have a type in your region"
  }

}


