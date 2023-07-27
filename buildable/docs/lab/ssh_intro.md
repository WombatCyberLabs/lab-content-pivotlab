# SSH Pivot Challenge

## Lab Network

The relevant parts of the lab network for this exercise can be seen in the following image.

![Lab Network](./images/SSHLabNetwork.png)

## Goal And Targets

We can access the SSH server through the Docker proxy at <SelfLink protocol="ssh://" port=8092 path="" />. Our goal is to access the unauthenticated telnet service running on port 23 of an unknown host on the 10.13.39.0/24 network by pivoting through the SSH server and performing a network scan to discover the target IP.
