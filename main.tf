resource "multipass_instance" "vm" {
  for_each = var.vm_instances

  name   = each.key
  image  = var.vm_image
  cpus   = each.value.cpus
  memory = each.value.memory
  disk   = each.value.disk
}