output "public_fqdns" {
  description = "List of Public FQDNs"
  value       = ["${aws_route53_record.instance_public.*.name}"]
}

output "private_fqdns" {
  description = "List of Private FQDNs"
  value       = ["${aws_route53_record.instance_internal.*.name}"]
}

output "private_ips" {
  description = "List of private ip addresses created by this module"
  value       = ["${aws_route53_record.instance_internal.*.records}"]
}

output "public_ips" {
  description = "List of public ip addresses created by this module"
  value       = ["${aws_route53_record.instance_public.*.records}"]
}
