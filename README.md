AWS DC/OS Route53 Records for Instances (NOTE: THIS IS CURRENTLY EXPERIMENTAL AND NOT YET SUPPORTED)
============
This module is used to create a custom Route53 records for instances

EXAMPLE
-------

```hcl
module "agent_route53" {
 source                    = "dcos-terraform/route53-instances/aws"
 cluster_name              = "dcos-cluster"
 domain                    = "testing.us"
 ttl                       = "60"
 aws_zone_id               = "ABCDE1278487696B"

 num             = "1"
 public_records  = "10.10.10.120"
 private_records = "172.1.1.120"
 hostname_format  = "agent"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_zone\_id | The Zone ID to be used | string | n/a | yes |
| cluster\_name | Cluster name all resources get named and tagged with | string | n/a | yes |
| domain | The domain of your Route 53 Zone | string | n/a | yes |
| private\_records | Private Records (IPs) for the Bootstrap Node | list | n/a | yes |
| public\_records | Public Records (IPs) for the Bootstrap Node | list | n/a | yes |
| ttl | The TTL of the record to add to the DNS zone | string | n/a | yes |
| hostname\_format | Format the hostname inputs are index+1, domain, cluster_name | string | `"%[3]s-instance%[1]d-%[2]s"` | no |
| num | Number of instances | string | `"1"` | no |
| tags | Custom tags added to the resources created by this module | map | `<map>` | no |
| type | Type of Record | string | `"A"` | no |

## Outputs

| Name | Description |
|------|-------------|
| private\_fqdns | List of Private FQDNs |
| private\_ips | List of Private IPs |
| public\_fqdns | List of Public FQDNs |
| public\_ips | List of Public IPs |

