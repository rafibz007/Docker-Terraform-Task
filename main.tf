terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "~> 2.15.0"
        }
    }
    
}



provider "docker" {}


resource "docker_image" "nginx" {
    name = var.nginx_docker_image
}

resource "docker_container" "nginx" {
    image = docker_image.nginx.latest
    name = "my-nginx"
    ports {
        internal = 80
        external = var.nginx_port
    }
}