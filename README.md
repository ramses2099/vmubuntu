# vmubuntu
Vm docker Ubuntu with ssh setting

## create diretory

### 1 - mkdir vmubuntu
### 2 - cd vmubuntu

## create dockerfile

### New-Item -Path 'Dockerfile' -ItemType File

## create rsa key 
### ssh-keygen -t rsa -m PEM -f id_rsa

## password
### e.g password123

## build image docker
### docker build -t remote_server .

## run docker images
### docker run -d --name remote_server -it -p 58897:22 remote_server

## connect to server
### ssh ramses2099@localhost -p 58897
### exit

## connect with private key
### ssh -i id_rsa ramses2099@localhost -p 58897

## Setup an SSH Server on Ubuntu Within a Docker Container: Public Key Authentication
## Thanks for the content owner Mohammad Sahebhonar
## youtube 
### https://www.youtube.com/watch?v=VQfrtRY6Szk