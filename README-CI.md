We are creating a CI/CD pipeline for a software project using Docker and GitHub Actions. This project involves a simple web application and its dependencies. We aim to automate the build and deployment process using CI/CD principles.
Installing Docker throught the Docker website and then I already had WSL2 installed.
To build the image from the dockerfile you use the command 
docker build -t image_name .
To run the container the following command.
docker run -d -p host-port:container-port --name your-container-name image_name
Go to local host in any browser to see it running
Here is an example command to authenticate with DockerHub:
docker login --username <username> --password <password>
To push a container image to Dockerhub without using GitHub Actions, you need to first tag your local image with your Dockerhub username and repository name. Here is an example command to tag your local image:
docker tag <image_name> <username>/<repository_name>:<tag>
After tagging your local image, you can push it to your Dockerhub repository with the following command:
docker push <username>/<repository_name>:<tag>
https://hub.docker.com/repository/docker/cheetahjohn04/website/general
Github Secrets:
These are secret values that you can use in your GitHub Actions workflow.
You go to settings in your github repository and then select secrets then add a name and the secret.
I have the Dockerhub username and password set as secrets.
For the behavior of a GitHub workflow, you would typically set it up to run on specific events, such as pushing to a branch or opening a pull request. Within the workflow, you can define steps that will be executed when the workflow is triggered. The steps can include tasks like building the Docker image, running tests, or deploying the application.
If you plan to reuse this workflow or share it with others, you should ensure that any custom variables in the workflow are defined in a way that is generic and can be easily changed.
