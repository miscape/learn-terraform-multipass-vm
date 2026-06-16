locals {
  instances = {
    "vm-01" = {
      cpus   = 1
      memory = "1G"
      disk   = "5G"
    }

    "vm-02" = {
      cpus   = 1
      memory = "1G"
      disk   = "5G"
    }

    "vm-03" = {
      cpus   = 1
      memory = "1G"
      disk   = "5G"
    }
  }
}

resource "multipass_instance" "vm" {
  for_each = local.instances

  name   = each.key
  image  = "24.04"
  cpus   = each.value.cpus
  memory = each.value.memory
  disk   = each.value.disk
}