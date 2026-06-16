variable "vm_image" {
  description = "Immagine Ubuntu da usare per le VM Multipass"
  type        = string
  default     = "24.04"
}

variable "vm_instances" {
  description = "Definizione delle VM Multipass da creare"
  type = map(object({
    cpus   = number
    memory = string
    disk   = string
  }))

  default = {
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