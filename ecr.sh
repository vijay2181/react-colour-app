#!/bin/bash
 
#Programmatically create an ECR repo if doesn't exists

# Create the repo
echo "Enter the repo name you want to create in ECR: "
read REPO_NAME
echo "Enter the region: "
read REGION
echo "Enter Tag for Repository: "
read TAG


aws ecr describe-repositories --repository-names $REPO_NAME --region $REGION  2>  /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws ecr create-repository --repository-name $REPO_NAME --region $REGION
    echo "Successfully created ${REPO_NAME} repo"
fi


#Getting Account details
ECR_ACCOUNT="$(aws sts --region $REGION  get-caller-identity --query 'Account' --output text).dkr.ecr.$REGION.amazonaws.com"

# AWS Authentication
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ECR_ACCOUNT

#build the image with Dockerfile
docker build -t $REPO_NAME .

#tag the image
docker tag $REPO_NAME:latest $ECR_ACCOUNT/$REPO_NAME:$TAG

#push image to ecr
docker push $ECR_ACCOUNT/$REPO_NAME:$TAG

