## React Web Application

### Summary
This is a basic digital coloring App! 

##### Getting Started
For using this app,  we need to setup infrastructure, use this repo to setup infrastucture using TERRAFORM(for this step go to this [repo](https://github.com/vijay2181/terraform-sample-ec2-machine)).

##### Install dependencies

`curl --silent --location https://rpm.nodesource.com/setup_16.x | bash -`

`yum -y install nodejs`

`curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo`

`sudo yum install yarn -y`

##### Run Snap Shot from the root directory

`yarn upgrade`

`yarn start`

![image](https://user-images.githubusercontent.com/66196388/182698138-ca6d6ea5-ffa6-471a-b0d0-d5bdf3814027.png)


##### Build the image

`docker build -t colour-app:latest .`

##### Run the container locally

`docker run -it -p 8080:80 colour-app:latest`

we will create a private registry on AWS which is ECR, then push image to `colour-app` repository.
Then we will provision infrastructure on AWS using Terraform
