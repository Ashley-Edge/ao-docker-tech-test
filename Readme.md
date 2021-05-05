# AO Tech Challenge: Part 1 - My solution

## Contents
* [The Brief](#The-Brief)
* [My Solution](#My-Solution)
* [Future Improvements](#Future-Improvements)
* [Notes](#Notes)

## The Brief

The application an on-premise service that needs to be migrated to the cloud. It currently run on a Windows Server 2012 R2 server on a VMware ESXi platform that is due to be decommissioned. In the test and production environment the application is load balanced by a pair of Citrix Netscaler's.

The team that owns this app has also recently transitioned to a product aligned team and is expected to take full operational ownership of the infrastructure supporting their application. They would like to avoid having to 'lift and shift' the application to cloud based instances and have asked if you would be able to help them containerise it instead.

The team have already managed to dockerise the application but would like to get a load balancer provisioned with a view of removing the need for the Netscaler when the application is migrated. They also have a desire the begin breaking up the application and believe this will be an important step on that journey.

## My Solution

I have provisioned an NGINX container that routes traffic to the application's container.

![NGINX plan](https://trello-attachments.s3.amazonaws.com/608d7ef51f885986542e0ad7/6091bc74da55476e10e2c8e4/333e99e755b306b53a98bb43f78508af/NGINX_plan2.png)

To ensure that the local developer experience is as seamless as possible, I have used a docker-compose.yaml file to define and run my two containers with one single command `docker-compose up -d`

## Future Improvements

One of NGINX's most powerful capabilities is to be a load balancer over multiple instances. This allows your application to be highly available; distributing the load.

![proposed plan](https://trello-attachments.s3.amazonaws.com/608d7ef51f885986542e0ad7/6091bc74da55476e10e2c8e4/8a5c78532d81ba4fcdd0e8b18d602a17/NGINX_plan.png)

## Notes

To further improve seamlessness I would like to explore the idea of triggering a webhook to auto docker-compose the application when a developer has pushed improvements to GitHub. I will explore this idea in part 2 of this tech test. I will be using everything from this part to complete further parts.
