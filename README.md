# SSH Docker Environment
 Simple Docker-based environment for SSH access to a container.<br>
 You can play,test,learn about networking tools.<br>
## Instructions

### 1. Build the docker image 
docker build -t ssh-container .

### 2.Run the docker container
docker run -d -p 2222:22 --name ssh-container ssh-container

### 3.Connect via ssh
ssh sshuser@localhost -p 2222

### username:  sshuser <br>
### password: password

### note:You can change the username and password inside the dockerfile
