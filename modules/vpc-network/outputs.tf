output "network" {
  description = "A reference (self_link) to the VPC network"
  value       = google_compute_network.vpc.self_link
}

#-----------------------------------------------------------------------------------------------------------------
# Private Subnetwork Outputs
# ---------------------------------------------------------------------------------------------------------------------

output "private_subnetwork" {
  description = "A reference (self_link) to the private subnetwork"
  value       = google_compute_subnetwork.vpc_subnetwork_private.self_link
}

output "private_subnetwork_name" {
  description = "Name of the private subnetwork"
  value       = google_compute_subnetwork.vpc_subnetwork_private.name
}

output "private_subnetwork_cidr_block" {
  value = google_compute_subnetwork.vpc_subnetwork_private.ip_cidr_range
}

output "private_subnetwork_gateway" {
  value = google_compute_subnetwork.vpc_subnetwork_private.gateway_address
}

output "private_subnetwork_secondary_cidr_block" {
  value = google_compute_subnetwork.vpc_subnetwork_private.secondary_ip_range[0].ip_cidr_range
}

output "private_subnetwork_secondary_range_name" {
  value = google_compute_subnetwork.vpc_subnetwork_private.secondary_ip_range[0].range_name
}

# ---------------------------------------------------------------------------------------------------------------------
# Access Tier - Network Tags
# ---------------------------------------------------------------------------------------------------------------------



output "private" {
  description = "The network tag string used for the private access tier"
  value       = module.network_firewall.private
}

output "private_persistence" {
  description = "The network tag string used for the private-persistence access tier"
  value       = module.network_firewall.private_persistence
}
