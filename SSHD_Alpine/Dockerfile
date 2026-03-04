FROM alpine:3.23.3

RUN apk update
RUN apk add --no-cache openssh-server
RUN ssh-keygen -A

#RUN ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N ""

RUN mkdir -p /root/.ssh && echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCx5MPqZ53TeSg8P6Y7858E5FfoV7YoMNUbVwu0PN+v1uRZEKbESM6phuvPqWdYziSoxYlw6bxYfZ0nqYCLuimNqfJvQSykNDto6AJpEPbaBTx7uscc/W6u4pTgHT+/7a2GxuEOyoOFc2lIPnSK5irqyhmskznzbldKFYsEuv0iKtG7aKY61UaL3S6z/Dqey/HYJDv22QMOJtHFnM2d2d5l3vO5eIq5W8CkpcZVIpoMO3Qxw0hl/QLEYrOKDDC2/OA/XiodMKmmVGMGJ8+jSEW6AXbQzAZeJ1J5HHMjJrGmYIFhwMbUj2T20ah+tVrVRqZEJYrBUo49ciDf/QQsWGgEk52RD6o9I3Rc2dxweDDs7HY8rvzpTgw0LL4+9wJfceXQ/Kp4iC15LD9AQn6DAQghhOW5aR2Vgd55uHZ1nZEIv54nZB8x2d5kBK38dTTORNs1qPoPjhJuv2pqO/0airdRoOVbkFyYjpgTQmYNy0v2fwHAI8HyGDSByt47O7FwUQE= mifadir@mifadir-HP-EliteBook-Folio-1040-G2" > /root/.ssh/authorized_keys

RUN chmod 700 /root/.ssh
RUN chmod 600 /root/.ssh/authorized_keys

EXPOSE 22
EXPOSE 3000
EXPOSE 8080

CMD ["/usr/sbin/sshd", "-D"]
