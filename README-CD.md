## Project 5
1. Project Overview
This project uses sematic versioning, workflows and webhooks to automate actions as well as setup versions.
2. How to setup a tag in git.
To create a new tag in Git, you can use the following command: "git tag -a v1.0.0 -m "version 1"
Then to push the tag you use the following command: "git push origin v1.0.0"
3. Behavior of Github workflow
When there is a push ro a tag it logs into Dockerhub and pushes the new version with the tag name e.i. v1.0.0
It also pushes to dockerhub when there is a push to main and that push updates main.
[link to dockerhub](https://hub.docker.com/repository/docker/cheetahjohn04/website/general)
4. How to install docker into the instance.
I ran sudo apt install docker and sudo apt install docker.io and then it worked.
5. What does the pull-restart scripot do?
It kills the conatiner running and then removes in then pulls a new container from dockerhub and starts that one with the newest image running on it.
6. How to install the webhook?
sudo apt install webhook is the command to install webhook.
7. Created a webhook in docker hub with the correct url