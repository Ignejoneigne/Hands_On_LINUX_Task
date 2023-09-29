# Hands_On_LINUX_Task
D4ML Skill Boost task: LINUX
As a junior DevOps engineer, you have a task from Team Lead. Our production system has nginx web server in order.

A client wants to have a list of commands which they can execute at their side to achieve the next things:

1. Create archive from /etc/nginx/* directory
2. Move this archive to /opt/archive/ directory
3. Owner of /opt/archive directory and all files inside must be user director and group maintainer
 

All these commands should be executed by user admin.
All outputs of the commands should be stored in file output.txt and must be understandable, so by execution from client-side, output.txt file will be created for client needs
echo command could help you in that
output.txt must be at /opt/archive/ directory at the end with all executed outputs.
Keep in mind that in our production system we don't have any users except nginx and root.
Both output and commands list files must be with comments to explain what is going on
 

Please keep in mind next things:

During t2.micro Amazon Linux Linux creation in AWS Web Console, you should add these lines to User-Data Section
Pay attention to this page, especially Security Groups (AWS security policy#SecurityGroups)
Change default 22 port inbound rule to HTTPS (443) and source IP address should be your public IP Address
 

How to create AWS instance, which AMI, IAM, etc. to use: AWS Instance creation steps - DevOps Internal - Accenture Confluence .
