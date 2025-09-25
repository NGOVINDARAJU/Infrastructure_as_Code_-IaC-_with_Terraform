terraform {
required_providers {
docker = {
source = "kreuzwerker/docker"
version = "~> 2.19.0"
}
}
}


# Provider: use the default socket on Linux/macOS. On Windows change host to the named pipe (see notes).
provider "docker" {
host = "npipe:////./pipe/docker_engine"
}


# Pull the official nginx lightweight image
resource "docker_image" "nginx" {
name = "nginx:alpine"
}


# Create a container from that image and map container port 80 -> host port 8080
resource "docker_container" "nginx" {
name = "my-nginx"
image = docker_image.nginx.latest


ports {
internal = 80
external = 8081
}
}