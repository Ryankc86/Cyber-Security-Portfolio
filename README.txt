## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://github.com/Ryankc86/Cyber-Security-Portfolio/blob/08141a99217b9334a2b70cf29dd327af119dff86/Diagrams/Project%201.jpg

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the install-elk.yml file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly isolated, in addition to restricting access to the network.
Load balancing helps ensure that if one server is compromised, the other server keeps the application running. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system servers.

The configuration details of each machine may be found below.


| Name     | Function | IP Address    | Operating System |
|----------|----------|---------------|------------------|
| Jump Box | Gateway  | 168.61.219.113| Linux            |
| Web 1    | DVWA     | 23.99.183.41  | Linux            |
| Web 2    | DVWA     | 23.99.183.41  | Linux            |
| Elk VM   | ELK stack| 40.112.217.194| Linux            |


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
73.210.118.247

Machines within the network can only be accessed by the home workstation with the IP address of 73.210.118.247.

A summary of the access policies in place can be found in the table below.

| Name         |Publicly Accessible  | Allowed IP Addresses |
|--------------|---------------------|----------------------|
| Jump Box     | No                  | 73.210.118.247       |
| Load Balancer| No                  | 73.210.118.247       |
| Elk VM       | No                  | 73.210.118.247       |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because if the ELK VM fails, it can be easily and quickly rebuilt. 

The playbook implements the following tasks:
- Install Docker
- Install Python3
- Increase Virtual Memory
- Downloand and launch docker elk container
- Enable docker service on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

https://github.com/Ryankc86/Cyber-Security-Portfolio/blob/a3bf13016fdb2dfbf0df033fc2e9085c1277d2d4/elk%20docker%20ps.PNG

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.5
10.0.0.6

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat is used to monitor log files or locations that are specified. It collects log events and then forwards them for indexing.
-Metricbeat monitors the server by collecting metrics and services running on the server.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the .yml file to /etc/ansible.
- Update the hosts file to include the elk server host. This should include the private IP of the Elk VM and the path for using python3
- Run the playbook, and navigate to  http://40.112.217.194:5601/app/kibana to check that the installation worked as expected.


*Run the playbook by using the command ansible-playbook install-elk.yml

*You can manually launch the ELK container using the command sudo docker start elk
