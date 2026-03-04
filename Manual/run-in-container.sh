#!/bin/sh

apk update
apk add openssh-server lsof fish bash

ssh-keygen -A

/usr/sbin/sshd
