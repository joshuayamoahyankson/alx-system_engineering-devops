<h1>SSH</h1>

<h3>What is SSH</h3>
<p><em>SSH is a secure protocol used as the primary means of connecting to Linux servers 
remotely. It provides a text-based interface by spawning a remote shell. After 
connecting, all commands you type in your local terminal are sent to the remote server 
and executed there. (Source: SSH Essentials. Justin Ellingwood)</em></p>

<h4>Tasks</h4>

<p>0. Use a private key

Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu.

Requirements:

Only use ssh single-character flags
You cannot use -l
You do not need to handle the case of a private key protected by a passphrase</p>

<p>Create an SSH key pair

Write a Bash script that creates an RSA key pair.

Requirements:

Name of the created private key must be school
Number of bits in the created key to be created 4096
The created key must be protected by the passphrase betty</p>

<p>2. Client configuration file

Your machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

Requirements:

Your SSH client configuration must be configured to use the private key ~/.ssh/school
Your SSH client configuration must be configured to refuse to authenticate using a password</p>

<p>3. Let me in!

Now that you have successfully connected to your server, we would also like to join the party.

Add the SSH public key below to your server so that we can connect using the ubuntu user.</p>

<p>4. Client configuration file (w/ Puppet)
#advanced
Let’s practice using Puppet to make changes to our configuration file. Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password.

Requirements:

Your SSH client configuration must be configured to use the private key ~/.ssh/school
Your SSH client configuration must be configured to refuse to authenticate using a password</p>

<h5>Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x0B-ssh
File: 100-puppet_ssh_config.pp</h5>
