# String variable
variable "example_string" {
  description = "A string variable"
  type        = string
  default     = "default_value"
}

# Number variable
variable "example_number" {
  description = "A number variable"
  type        = number
  default     = 42
}

# Boolean variable
variable "example_bool" {
  description = "A boolean variable"
  type        = bool
  default     = true
}

# List variable
variable "example_list" {
  description = "A list variable"
  type        = list(string)
  default     = ["item1", "item2", "item3"]
}

# Map variable
variable "example_map" {
  description = "A map variable"
  type        = map(string)
  default     = {
    key1 = "value1"
    key2 = "value2"
  }
}

# Object variable
variable "example_object" {
  description = "An object variable"
  type = object({
    name    = string
    age     = number
    is_male = bool
  })
  default = {
    name    = "John"
    age     = 30
    is_male = true
  }
}

# Tuple variable
variable "example_tuple" {
  description = "A tuple variable"
  type        = tuple([string, number])
  default     = ["item1", 42]
}
