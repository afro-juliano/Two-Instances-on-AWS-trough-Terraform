# This is how a variable should be declared.
variable "image_id" {
  default = "ami-0a6e38961e6e621b0"
  type = string
  description = "The id of the machine image (AMI) to use for the server."

# Custom validation Rules
  validation {
    condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}
