# SSH Pivot Challenge

## About SSH

SSH, which stands for Secure Shell, is a cryptographic network protocol used for securely accessing and managing remote systems over an unsecured network, such as the internet. It provides a secure channel between two computers, allowing data to be exchanged securely and encrypted. SSH is commonly used by system administrators, developers, and other users to perform various tasks on remote servers and devices. 

SSH can also create encrypted tunnels for port forwarding, allowing users to securely access services running on the remote server as if they were running locally. There is a requirement that the remote server is configured to allow for this.

## Lab Network

The relevant parts of the lab network for this exercise can be seen in the following image.

![Lab Network](./images/SSHLabNetwork.png)

## Goal And Targets

We can access the SSH server through the Docker proxy at <SelfLink protocol="ssh://" port=8092 path="" />. Our goal is to access the unauthenticated telnet service running on TCP port 23 of an unknown host on the 10.13.39.0/24 network by pivoting through the SSH server and performing a network scan to discover the target IP.

## [Walkthrough](/lab/ssh.html)

For a walkthrough on actually doing this, you can follow the full documentation [here.](/lab/ssh.html) If you want to try doing this on your own for a while and reference the walkthrough if you get stuck, that is also an option.
