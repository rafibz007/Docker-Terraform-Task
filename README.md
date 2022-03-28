# Docker-Terraform-Task

## How to use
App can be started now by commands:    
	- terraform init    
	- terraform apply   
Variables can be specified like this:   
	- terraform apply -var='\<var\>=\<value\>'    
  
  Possible variable names:    
	- nginx_docker_image    
	- nginx_port    
	- nginx_url
  
## Answered Questions
  - Do you know any tools that can be used instead of Docker to build and run containers?   
Only Kubertnetes, but it only adds layer of abstraction over deploying docker containers.

  - Do you know other Infrastructure as Code technologies? What are the things you like
and don’t like in Terraform?    
I've heard about Kubernetes and Ansible.
Terraform is pretty clean declarative language, but as it was my first contact with it I've lacked more detailed description and examples of usage 

  - How would you deploy this sample hello world project in Kubernetes using Terraform
instead of running this locally on your machine?    
I have no experience with it, but I'm guessing it would require setting up master and worker nodes, 
deploying our nginx app in a pod inside worker node and set up ingress to allow setting url.

## What I have done
Created and pushed docker image   
Done it by using commmited files and commands:
	docker build -t my-nginx .
	docker tag my-nginx rafibz007/my-nginx
	docker push rafibz007/my-nginx

After running:
	docker run -d -p 8080:80 rafibz007/my-nginx   
hello world page can be seen at localhost:8080

<br>

Added Terraform   
App can be started now by command:    
	- terraform init    
	- terraform apply   
Variables can be specified like this:   
	- terraform apply -var='\<var\>=\<value\>'    
    
Possible variable names:    
	- nginx_docker_image    
	- nginx_port    
	- nginx_url
  
<br>

Also I've tried adding reverse proxy using traefik, in order to allow
setting url for nginx server. But unfortunately I've failed and can't
afford spending more time trying to fix it right now,
I'm adding what I've achived with it so far.

## What could be done better
  - Nginx config could be added when creating image.   
  - Maybe find other way of setting url for nginx, but I don't know if one exists :(

