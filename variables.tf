variable "vm_image" {
  description = "Immagine Ubuntu da usare per le VM Multipass"
  type        = string
}

variable "vm_instances" {
  description = "Definizione delle VM Multipass da creare"
  type = map(object({
    cpus   = number
    memory = string
    disk   = string
  }))
}