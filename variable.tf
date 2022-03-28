variable "nginx_docker_image" {
    description = "Name and version of docker image to be used"
    type = string

    default = "rafibz007/my-nginx:latest"
}

variable "nginx_port" {
    description = "Port number on which hosted application will be available"
    type = number

    default = 8080
}

variable "nginx_url" {
    description = "URL on which hosted application will be available"
    type = string

    default = "localhost.xyz"
}