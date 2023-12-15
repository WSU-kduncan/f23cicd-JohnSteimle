#! /bin/bash
sudo docker kill cheetahjohn04website
sudo docker rm cheetahjohn04website
sudo docker image rm cheetahjohn04/website:latest
sudo docker pull cheetahjohn04/website:latest
sudo docker run -d -p 80:80 --name cheetahjohn04website --restart unless-stopped cheetahjohn04/website:latest