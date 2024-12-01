0x09. Web Infrastructure Design
This project focuses on designing and understanding web infrastructure setups, their components, roles, and potential issues. The aim is to build scalable, secure, and monitored web systems.
Learning Objectives
By completing this project, you should be able to:
•	Understand the components of a web infrastructure and their roles.
•	Design simple and distributed web systems.
•	Identify single points of failure (SPOF) and address scalability and security issues.
•	Implement HTTPS and monitoring tools in a web infrastructure.

Project Tasks
Task 0: Simple Web Stack
Objective: Design a single-server web infrastructure with the following components:
•	A single server with a LAMP stack.
•	A domain name (www.foobar.com) pointing to the server IP 8.8.8.8.
Key Learnings:
•	Components: Server, domain name, web server (Nginx), application server, and database (MySQL).
•	Issues: Single Point of Failure (SPOF), downtime during maintenance, lack of scalability.
File: 0-simple web stack	

Task 1: Distributed Web Infrastructure
Objective: Design a three-server web infrastructure with:
•	A load balancer (HAProxy) and two application servers.
•	Primary-Replica (Master-Slave) database setup.
Key Learnings:
•	Load balancing algorithms (e.g., round-robin).
•	Difference between Active-Active and Active-Passive setups.
•	Benefits of a distributed database cluster.
Issues: Load balancer as SPOF, no HTTPS, and no monitoring.
File: 1-distributed web infrastructure

Task 2: Secured and Monitored Web Infrastructure
Objective: Enhance the distributed web infrastructure with:
•	Security (firewalls and SSL certificates for HTTPS).
•	Monitoring tools (Sumo Logic or similar).
Key Learnings:
•	Importance of firewalls and HTTPS for securing traffic.
•	Role of monitoring in detecting and resolving issues.
•	Potential problems like SSL termination at the load balancer.
File: 2-secured and monitored web infrastructure

Task 3: Scale Up
Objective: Scale the infrastructure by:
•	Adding a dedicated web server, application server, and database server.
•	Configuring an HAProxy cluster for improved load balancing.
Key Learnings:
•	Benefits of splitting roles across servers for performance and fault isolation.
•	High availability with HAProxy clusters.
File: 3-scale up

Requirements
•	Whiteboard each task and upload the diagram to an image hosting platform (e.g., Imgur).
•	Include the diagram URL in the corresponding task file.
•	Submit the GitHub repository link for the project.

Author
Rahmat Zakariyyah

