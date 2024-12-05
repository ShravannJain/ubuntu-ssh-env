<h1>SSH Docker Environment</h1>
 Simple Docker-based environment for SSH access to a container.<br>
 You can play,test,learn about networking tools.<br>
 <h2>Instructions</h2>
<b>1.build the docker image:docker build -t ssh-container .
</b>
<b>2.Run the docker container:docker run -d -p 2222:22 --name ssh-container ssh-container
</b>
<b>3.Connect via ssh:ssh sshuser@localhost -p 2222
</b>
username:sshuser
password:password
