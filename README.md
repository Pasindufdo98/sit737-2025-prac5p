﻿# sit737-2025-prac5p

This documentation outlines the process I followed to containerize my Node.js web application using Docker and Docker Compose.

I installed Docker Desktop from the official Docker website. It includes both the Docker Engine and Docker CLI, which are essential to build, run, and manage containers.

### Step 2: Clone the Web Application
I reused the calculator web application developed in a previous task. It uses Node.js, Express, and Winston for basic math operations and logging.

I made sure the following files were present:

server.js
package.json
combined.log / error.log (created at runtime)


### Step 3: Create a Dockerfile
I created a Dockerfile to define the environment for my application:

### Step 4: Build the Docker Image
Using the Dockerfile, I built the image locally

I verified the image using the command:
```docker images```

### Step 5: Create a Docker Compose File
I created a docker-compose.yml file to simplify running the app and configuring the container.

This Compose file sets up port mapping, environment variables, and a health check for the /multiplication endpoint.

### Step 6: Start the Docker Compose Environment
I launched the container using:
```docker-compose up --build```

This command builds the image (if needed) and starts the app in a container. Logs are visible in the terminal.

### Step 7: Test the Application
I tested the app in the browser by visiting:

```http://localhost:3000/addition?n1=10&n2=5```

I also tested other endpoints like subtraction, multiplication, etc., and verified responses.


I used:
```docker inspect docker-web-app```
To verify that the health check status was reported as healthy.


### Step 8: Push the Docker Image to a Registry
After logging into Docker Desktop, I tagged the image:


```docker tag pasin/docker-web-app <my_dockerhub_pasindufdo98>/docker-web-app:latest```
Then I pushed it to Docker Hub:

```docker push <my_dockerhub_pasindufdo98>/docker-web-app:latest```
Once pushed, it appeared under my repositories on Docker Hub.

### Conclusion
The application is now fully containerized and ready to be deployed or shared. All necessary configurations for building, running, and testing the app are included in the Dockerfile and Compose setup
