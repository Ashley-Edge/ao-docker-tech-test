# AO Tech Challenge: Part 2 - My solution

## Contents
* [The Brief](#The-Brief)
* [My Solution](#My-Solution)
* [Future Improvements](#Future-Improvements)
* [Notes](#Notes)

## The Brief

The application is currently built and packaged using an on-premise TeamCity installation and deployed to the virtual servers using Octopus Deploy. The team would like to modernise the deployment pipeline for the application now that it is running in a container. They have also expressed interest in having their infrastructure and pipeline defined as code to serve as a template to avoid repeat work when migrating similar applications.

The company is heavily invested in AWS and the team would like to stay with the companies cloud provider of choice. As this is an experiment so the team can learn more about running the app in the cloud they will only require a single environment to begin with.

Note that the infrastructure as code solution does not need to be run within a pipeline for this part of the experiment - The team are happy to run the terraform locally, for now.

## My Solution

** need in upload CI/CD pipeline **

** Terraform needs work - more time to explore fully **

## Future Improvements

Including tests for the application would make sure that the application is fully working before it is built-in Jenkins and deployed. I could easily include this step in my Pipeline.

## Notes

I am unfamiliar with TeamCity at this moment (has been added to my investigation list), this is why I had opted to use Jenkins. Since Pushing this repository to my Github account I haven't been able to fully test out part-2 as much as I tested part-1. I will work on this even after I submit this test.... I am a completionist.
