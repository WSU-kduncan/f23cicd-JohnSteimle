We are creating a CI/CD pipeline for a software project using Docker and GitHub Actions. This project involves a simple web application and its dependencies. We aim to automate the build and deployment process using CI/CD principles.
Installing Docker throught the Docker website and then I already had WSL2 installed.
To build the image from the dockerfile you use the command 
docker build -t image_name .
To run the container the following command.
docker run -d -p host-port:container-port --name your-container-name image_name
Go to local host in any browser to see it running
