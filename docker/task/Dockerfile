# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables for non-interactive installations
ENV DEBIAN_FRONTEND=noninteractive

# Install OpenSSH server
RUN apt-get update && apt-get install -y openssh-server

RUN   mkdir /var/run/sshd

# Set root password for SSH login
RUN echo 'root:rootpassword' | chpasswd

# Allow root login via SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Ensure SSH login directory exists
RUN mkdir -p /root/.ssh

# Expose SSH port
EXPOSE 22

# Start the SSH service
CMD ["/usr/sbin/sshd", "-D"]
                             
