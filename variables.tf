variable "cluster_name" {
  description = "Name of the DC/OS cluster"
}

variable "hostname_format" {
  description = "Format the hostname inputs are index+1, region, cluster_name"
  default     = "%[3]s-instance%[1]d-%[2]s"
}

variable "num" {
  description = "How many instances should be created"
  default     = "1"
}

variable "tags" {
  description = "Add custom tags to all resources"
  type        = "map"
  default     = {}
}

variable "aws_zone_id" {
  description = "The Route 53 Zone ID to be used"
}

variable "type" {
  description = "Type of Record"
  default     = "A"
}

variable "ttl" {
  description = "The TTL of the record to add to the DNS zone"
}

variable "domain" {
  description = "The domain of your Route 53 Zone"
}

variable "public_records" {
  description = "Public Records (IPs) for the Bootstrap Node"
  type        = "list"
}

variable "private_records" {
  description = "Private Records (IPs) for the Bootstrap Node"
  type        = "list"
}
