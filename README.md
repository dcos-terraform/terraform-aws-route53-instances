
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_zone_id | The Zone ID to be used | string | - | yes |
| cluster_name | Cluster name all resources get named and tagged with | string | - | yes |
| domain | The domain of your Route 53 Zone | string | - | yes |
| hostname_format | Format the hostname inputs are index+1, domain, cluster_name | string | `%[3]s-instance%[1]d-%[2]s` | no |
| num | Number of instances | string | `1` | no |
| private_records | Private Records (IPs) for the Bootstrap Node | list | - | yes |
| public_records | Public Records (IPs) for the Bootstrap Node | list | - | yes |
| tags | Custom tags added to the resources created by this module | map | `<map>` | no |
| ttl | The TTL of the record to add to the DNS zone | string | - | yes |
| type | Type of Record | string | `A` | no |

## Outputs

| Name | Description |
|------|-------------|
| private_fqdns | List of Private FQDNs |
| private_ips | List of Private IPs |
| public_fqdns | List of Public FQDNs |
| public_ips | List of Public IPs |

