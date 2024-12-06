# Start from a base image
FROM ubuntu:20.04

# Install OpenSSH server
RUN apt-get update && apt-get install -y openssh-server

# Create directory for SSH daemon
RUN mkdir /var/run/sshd

# Add a user for SSH access
RUN useradd -m -d /home/sshuser -s /bin/bash sshuser && \
    echo "sshuser:password" | chpasswd

# Enable password authentication (not recommended for production)
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start the SSH service
CMD ["/usr/sbin/sshd", "-D"]
