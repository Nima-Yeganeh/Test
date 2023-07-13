Here are the steps to install Docker on Ubuntu:

1. Update the package index:

```
sudo apt update
```

2. Install the required packages to allow apt to use a repository over HTTPS:

```
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
```

3. Add the official Docker GPG key:

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

4. Add the Docker repository to apt:

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

5. Update the package index again:

```
sudo apt update
```

6. Install Docker:

```
sudo apt install docker-ce docker-ce-cli containerd.io
```

7. Verify that Docker is installed and running:

```
sudo systemctl status docker
```

This should show that Docker is active and running.

8. Optionally, add your user to the `docker` group to allow running Docker commands without sudo:

```
sudo usermod -aG docker $USER
```

You will need to log out and log back in for the group membership to take effect.

That's it! Docker is now installed and ready to use on your Ubuntu system. You can start using Docker to deploy and run containerized applications.


Here are the basic steps to create and run a container using Docker:

1. Pull a Docker image from a registry or create your own image using a Dockerfile:

```
docker pull <image-name>
```

For example, to pull the official Nginx image:

```
docker pull nginx
```

2. Create a container from the image:

```
docker run --name <container-name> -d <image-name>
```

For example, to create a container named `my-nginx` from the Nginx image:

```
docker run --name my-nginx -d nginx
```

This creates a container from the Nginx image and starts it in detached mode.

3. Optionally, map container ports to host ports:

```
docker run --name <container-name> -d -p <host-port>:<container-port> <image-name>
```

For example, to map host port 80 to container port 80 for the Nginx container:

```
docker run --name my-nginx -d -p 80:80 nginx
```

This maps host port 80 to container port 80, allowing you to access the Nginx server from a web browser.

4. Check the status of the container:

```
docker ps
```

This lists the running containers, including the Nginx container you just created.

5. Access the running container:

```
docker exec -it <container-name> /bin/bash
```

For example, to access the Nginx container:

```
docker exec -it my-nginx /bin/bash
```

This opens a command prompt inside the container where you can run commands.

That's it! You have now created and run a container using Docker. You can use Docker to manage containers, images, and networks, and deploy containerized applications.


To view the logs of a running container using Docker, use the `docker logs` command followed by the container name or ID:

```
docker logs <container-name>
```

For example, to view the logs of the Nginx container we created earlier:

```
docker logs my-nginx
```

This displays the logs of the container in the terminal.

By default, the `docker logs` command shows the logs from the container's standard output (stdout). To include logs from the container's standard error (stderr), use the `--stderr` flag:

```
docker logs --stderr <container-name>
```

To follow the logs in real-time, use the `--follow` or `-f` flag:

```
docker logs --follow <container-name>
```

This displays the logs in the terminal and updates them as new logs are generated.

Additionally, you can use the `--tail` flag to specify the number of lines to show from the end of the log:

```
docker logs --tail 10 <container-name>
```

This shows the last 10 lines of the container's log.

That's it! You can now view the logs of a running container using Docker.


Here are some useful Docker commands for working with Docker on Ubuntu:

1. `docker ps`: Lists the running Docker containers.

2. `docker images`: Lists the Docker images on the system.

3. `docker pull <image-name>`: Pulls a Docker image from a registry.

4. `docker run <image-name>`: Runs a Docker container from an image.

5. `docker stop <container-name>`: Stops a running Docker container.

6. `docker rm <container-name>`: Removes a Docker container.

7. `docker rmi <image-name>`: Removes a Docker image.

8. `docker logs <container-name>`: Displays the logs of a running Docker container.

9. `docker exec -it <container-name> /bin/bash`: Accesses the shell of a running Docker container.

10. `docker-compose up`: Builds and starts Docker containers defined in a `docker-compose.yml` file.

11. `docker-compose down`: Stops and removes Docker containers defined in a `docker-compose.yml` file.

12. `docker system prune`: Removes unused Docker resources, such as containers, images, and volumes.

13. `docker network create <network-name>`: Creates a Docker network.

14. `docker network ls`: Lists the Docker networks on the system.

15. `docker network inspect <network-name>`: Displays information about a Docker network.

These commands should help you get started with Docker on Ubuntu. For more information, you can refer to the Docker documentation at [https://docs.docker.com/. ↗](https://docs.docker.com/.)


To build a Docker image from a Dockerfile, follow these steps:

1. Create a new directory for your Docker context. This is the directory that contains your Dockerfile and any files that are needed to build your Docker image.

2. Create a Dockerfile in your Docker context directory. The Dockerfile specifies the instructions for building your Docker image. Here is an example Dockerfile:

```
# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
```

This Dockerfile uses the official Python 3.8 slim-buster image as a parent image, sets the working directory to `/app`, copies the contents of the current directory into the container, installs any needed packages, exposes port 80, sets an environment variable, and runs `app.py` as the default command.

3. Build the Docker image using the `docker build` command. The `docker build` command takes the Dockerfile and builds a new Docker image based on the instructions in the file. Here is an example command to build the Docker image:

```
docker build -t my-image .
```

This command builds a Docker image named "my-image" from the Dockerfile in the current directory (`.`).

4. Verify that the Docker image was created using the `docker images` command:

```
docker images
```

This command lists all the Docker images on your system, including the new image you just built.

That's it! You have now built a Docker image from a Dockerfile. You can use this image to run a Docker container based on the configuration in the Dockerfile.


Sure! Once you have built a Docker image using the Dockerfile, you can use it to run a Docker container. Here are the steps to run a Docker container using the image you just built:

1. Start by running the Docker container using the `docker run` command. You need to specify the name of the image you want to use and any other options you want to pass to the container. Here is an example command to run a Docker container using the image you just built:

```
docker run -d --name my-container -p 8080:80 my-image
```

This command starts a new Docker container named "my-container" based on the "my-image" Docker image you just built. It also maps port 8080 on your host machine to port 80 inside the container.

2. Verify that the Docker container is running using the `docker ps` command:

```
docker ps
```

This command lists all the running Docker containers on your system, including the container you just started.

3. Access the Docker container using a web browser or a command-line tool such as `curl`. If you mapped port 8080, you can access the container using the URL `http://localhost:8080`. Here is an example command to access the container using `curl`:

```
curl http://localhost:8080
```

This command sends an HTTP GET request to the container and displays the response in your terminal.

That's it! You have now run a Docker container using the Docker image you just built. You can use this container to test your application or deploy it to a production environment.



Yes, you can pass environment variables to a Docker container using the `-e` or `--env` option when starting the container with the `docker run` command. Here is an example command to pass an environment variable named `MY_VAR` with a value of `my-value` to a Docker container:

```
docker run -e MY_VAR=my-value my-image
```

This command starts a new Docker container using the `my-image` Docker image and sets the `MY_VAR` environment variable to `my-value`.

You can also pass multiple environment variables to a Docker container by specifying multiple `-e` options, like this:

```
docker run -e VAR1=value1 -e VAR2=value2 my-image
```

In addition to passing environment variables at run time, you can also set environment variables in the Dockerfile using the `ENV` instruction. Here is an example Dockerfile that sets an environment variable:

```
FROM python:3.8-slim-buster

ENV MY_VAR my-value

CMD ["python", "app.py"]
```

This Dockerfile sets an environment variable named `MY_VAR` with a value of `my-value`.

When you build and run the Docker image using this Dockerfile, the `MY_VAR` environment variable will be set in the container.

That's it! You can pass environment variables to a Docker container at run time or set them in the Dockerfile using the `ENV` instruction.


import docker

# Connect to the Docker daemon
client = docker.from_env()

# List all containers
containers = client.containers.list()
print("Containers:")
for container in containers:
    print(f" - {container.name}")

# List all images
images = client.images.list()
print("\nImages:")
for image in images:
    print(f" - {image.tags}")

# Pull an image
print("\nPulling an image...")
image = client.images.pull('nginx:latest')
print("Image pulled successfully!")

# Create and start a container
print("\nCreating and starting a container...")
container = client.containers.create('nginx:latest', ports={'80/tcp': 8080})
container.start()
print("Container created and started successfully!")

# Stop and remove a container
print("\nStopping and removing the container...")
container.stop()
container.remove()
print("Container stopped and removed successfully!")

