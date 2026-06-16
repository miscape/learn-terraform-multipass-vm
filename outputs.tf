output "vm_ips" {
  description = "Indirizzi IPv4 delle VM Multipass"
  value = {
    for name, instance in multipass_instance.vm :
    name => instance.ipv4
  }
}