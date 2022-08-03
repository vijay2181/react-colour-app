## React Web Application

### Summary
This is a basic digital coloring App! It's awesome!!! 😍

##### Getting Started
For using this app,  clone this repo

##### Install dependencies

`curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo`

`sudo yum install yarn`

##### Run Snap Shot from the root directory

`yarn start`

`yarn upgrade`

![](screenshot.png)

##### Build the image

`docker build -t colour-app:latest .`

##### Run the container locally

`docker run -it -p 8080:80 colour-app:latest`

we will create a private registry on AWS which is ECR, then push image to `colour-app` repository.
Then we will provision infrastructure on AWS using Terraform
