terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "myapp" {
  name  = "myapp-terraform"
  image = "myapp:2"

  ports {
    internal = 5000
    external = 5001
  }
}
