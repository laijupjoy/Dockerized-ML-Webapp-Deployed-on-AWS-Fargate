# Dockerized-ML-Webapp-Deployed-on-AWS-Fargate

AWS Fargate is a technology that you can use with Amazon ECS to run containers without having to manage
servers or clusters of Amazon EC2 instances. With Fargate, you no longer 
have to provision, configure, or scale clusters of virtual machines to run containers.

Fargate is a Container as a Service (CaaS) technology or Fargate is a Platform as a Service (PaaS)-like layer
on top of ECS that abstracts the infrastructure which enables users to focus on the desired state of the application.
We don't have to worry about where will deploy containers, or how will manage and scale them.

This project shows how to deploy a machine learning web application on AWS-Fargate.
 
 ## Diagram shows deploy application on ECS using AWS Fargate.

<p align="center">
  <img src="images\diagram.png" alt="workflow"/>
</p>

## Project Tasks:

1. Train and develop a machine learning pipeline for deployment.
2. Build a web app using a Flask framework. It will use the trained ML pipeline to 
   generate predictions on new data points in real-time.
3. Build and push a Docker image onto Amazon Elastic Container Registry.
4. Create and execute a task to deploy the app using AWS Fargate serverless infrastructure.
5. Testing the Web Application.
6. Deleting the Project.



Step 1-Create a ML We App docker image:

<p align="center">
  <img src="images\1.png" alt="workflow"/>
</p>

Step 2-Create a Repository in Elastic Container Registry (ECR)]
(a) Login to your AWS console and search for Elastic Container Registry:
(b)Create a new repository:
<p align="center">
  <img src="images\ecr registry.png" alt="workflow"/>
</p>

(c)Click on “View push commands”:


(d) Copy Push Commands:
<p align="center">
  <img src="images\push commands.png" alt="workflow"/>
</p>

<p align="center">
  <img src="images\push commands 2.png" alt="workflow"/>
</p>


Step 3— Execute push commands

Navigate to project folder using Anaconda Prompt and execute the commands copied in the step above and
in that folder where the Dockerfile and the rest of your code reside before executing these commands.

Step 4— Check your uploaded image

<p align="center">
  <img src="images\image in ecr.png" alt="workflow"/>
</p>

Step 5 — Create and Configure a Cluster

(a) Click on “Clusters” on left-side menu:

<p align="center">
  <img src="images\image in ecr - Copy.png" alt="workflow"/>
</p>


(b) Select “Networking only” and click Next step:

<p align="center">
  <img src="images\cluster1.png" alt="workflow"/>
</p>

(c) Configure Cluster (Enter cluster name) and click on Create:

<p align="center">
  <img src="images\cluster2.png" alt="workflow"/>
</p>


(d) Cluster Created:

<p align="center">
  <img src="images\cluster3.png" alt="workflow"/>
</p>


Step 6— Create a new Task definition

(a) Click on “Create new task definition”:

<p align="center">
  <img src="images\task definition 1.png" alt="workflow"/>
</p>

(b) Select “FARGATE” as launch type:
<p align="center">
  <img src="images\task definition 2.png" alt="workflow"/>
</p>

(c) Fill in the details:

<p align="center">
  <img src="images\task definition 2.png" alt="workflow"/>
</p>

(d) Click on “Add Containers” and fill in the details:

<p align="center">
  <img src="images\add container.png" alt="workflow"/>
</p>

(e) Click “Create Task” on the bottom right.

<p align="center">
  <img src="images\task definition end.png" alt="workflow"/>
</p>

Step 7 —Execute Task Definition
<p align="center">
  <img src="images\execute task.png" alt="workflow"/>
</p>

(a) Click on “Switch to launch type” to change the type to Fargate:
<p align="center">
  <img src="images\run task.png" alt="workflow"/>
</p>

(b) Select the VPC and Subnet from the dropdown:
<p align="center">
  <img src="images\run task2.png" alt="workflow"/>
</p>
(c) Click on “Run Task” on bottom right:
<p align="center">
  <img src="images\run task3.png" alt="workflow"/>
</p>
Step 8— Allow inbound port 5000 from Network settings

(a) Click on Task
<p align="center">
  <img src="images\task created2.png" alt="workflow"/>
</p>

(b) Click on ENI Id:

<p align="center">
  <img src="images\network id.png" alt="workflow"/>
</p>
(c) Click on Security groups
<p align="center">
  <img src="images\security group.png" alt="workflow"/>
</p>

(d) Click on “Edit inbound rules”
<p align="center">
  <img src="images\edit inbound rule.png" alt="workflow"/>
</p>

(e) Add a Custom TCP rule of port 5000
<p align="center">
  <img src="images\edit inbound rule2.png" alt="workflow"/>
</p>

Step 9 — See the app in action
<p align="center">
  <img src="images\app running 3.png" alt="workflow"/>
</p>

<p align="center">
  <img src="images\final output1.png" alt="workflow"/>
</p>

