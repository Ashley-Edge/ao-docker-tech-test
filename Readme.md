# AO Tech Challenge - My solution

Welcome to the AO Tech challenge!

This challenge consists of three exercises - Each is representative of a problem we have run across at AO. The first two exercises are technical and the third exercise is theoretical.
Solutions to each exercise will be evaluated on the following criteria:

- Completeness
- Correctness
- Legibility
- Aesthetics

## Pre-requisites

The project provided was built with, and tested against [Docker Desktop](https://www.docker.com/products/docker-desktop) _2.3.0.3_.

## Submission

To submit your work, please fork this repository, and push all commits to your fork upon completion. Once you are happy with your work, send us an email with a link to your repository.

## Exercises

The below exercises involve augmenting an [.NET Core](https://dotnet.microsoft.com/download/dotnet-core/2.2) _2.2_ HTTP web application.

To ensure your focus on the intended challenges, please note that the .NET Core base image and code do not need to be modified.

## Part 1: The Brief

The application an on-premise service that needs to be migrated to the cloud. It currently run on a Windows Server 2012 R2 server on a VMware ESXi platform that is due to be decommissioned. In the test and production environment the application is load balanced by a pair of Citrix Netscaler's.

The team that owns this app has also recently transitioned to a product aligned team and is expected to take full operational ownership of the infrastructure supporting their application. They would like to avoid having to 'lift and shift' the application to cloud based instances and have asked if you would be able to help them containerise it instead.

The team have already managed to dockerise the application but would like to get a load balancer provisioned with a view of removing the need for the Netscaler when the application is migrated. They also have a desire the begin breaking up the application and believe this will be an important step on that journey.

In order to complete this you must:

- Provision an NGINX container that will route traffic to the application container.
- Ensure the local developer experience is as seamless as possible, using docker compose.

## My Solution: Part 1

I have provisioned an NGINX container that routes traffic to the application's container.

![NGINX plan](https://trello-attachments.s3.amazonaws.com/608d7ef51f885986542e0ad7/6091bc74da55476e10e2c8e4/333e99e755b306b53a98bb43f78508af/NGINX_plan2.png)

To ensure that the local developer experience is as seamless as possible, I have used a docker-compose.yaml file to define and run my two containers with one single command `docker-compose up -d`

## Future Improvements

One of NGINX's most powerful capabilities is to be a load balancer over multiple instances. This allows your application to be highly available; distributing the load.

![proposed plan](https://trello-attachments.s3.amazonaws.com/608d7ef51f885986542e0ad7/6091bc74da55476e10e2c8e4/8a5c78532d81ba4fcdd0e8b18d602a17/NGINX_plan.png)

## Notes

To further improve seamlessness I would like to explore the idea of triggering a webhook to auto docker-compose the application when a developer has pushed improvements to GitHub. I will explore this idea in part 2 of this tech test. I will be using everything from this part to complete further parts.

## Part 2: The Brief

The application is currently built and packaged using an on-premise TeamCity installation and deployed to the virtual servers using Octopus Deploy. The team would like to modernise the deployment pipeline for the application now that it is running in a container. They have also expressed interest in having their infrastructure and pipeline defined as code to serve as a template to avoid repeat work when migrating similar applications.

The company is heavily invested in AWS and the team would like to stay with the companies cloud provider of choice. As this is an experiment so the team can learn more about running the app in the cloud they will only require a single environment to begin with.

In order to complete this you must:

- Produce the Infrastructure as code for the build and deploy pipeline.
- Produce the configuration file(s) for the build and deploy system.
- Produce the Infrastructure as code for the Service that the application will be deploy to.

Note that the infrastructure as code solution *does not* need to be run within a pipeline for this part of the experiment - The team are happy to run the terraform locally, for now.

## My Solution: Part 2

** need in upload CI/CD pipeline **

## Future Improvements

Including tests for the application would make sure that the application is fully working before it is built-in Jenkins and deployed. I could easily include this step in my Pipeline.

## Notes

I am unfamiliar with TeamCity at this moment (has been added to my investigation list), this is why I had opted to use Jenkins. Since Pushing this repository to my Github account I haven't been able to fully test out part-2 as much as I tested part-1. I will work on this even after I submit this test.... I am a completionist.

## Part 3

The team would like you to share your results with other teams who are also on a similar journey. Write a 'less than a page' summary on what you have produced for the team and any recommendations you would like to propose for future improvements.
