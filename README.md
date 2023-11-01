# Project Proposal

### Team:

- Mithil Dani (_mdani_)
- Jayraj Mulani (_jmulani2_)
- Mitanshu Reshamwala (_mresham_)

## Problem Statement and Description

### _From Chaos to Control: Terraforming a New DevOps Era_

In today's fast-paced environment, we recognize that software confined to our local machines holds no intrinsic value. Given the ever-evolving landscape of technology, it is imperative that we adopt a strategy for designing, developing, and deploying software that not only adapts to change but is also resilient, scalable, and highly available, all while requiring minimal human intervention and maintaining optimal costs.

Inefficient deployments, frequent incidents, and scalability challenges may cause service disruptions and slower response times. These can result in user dissatisfaction, decreased engagement, and potential loss of customers or revenue. Business stakeholders also demand reduced cost, increased efficiency, and faster release cycles. Moreover, manual deployment processes are time-consuming and prone to errors, causing frustration and impeding the productivity of the development teams. In this project, we propose a terraform-based DevOps pipeline that effectively addresses all the issues mentioned above. Our bottom-up approach to this problem involves creating smaller pipelines that eventually merge to produce a fully automated DevOps pipeline.

Our pipeline provisions and configures necessary cloud resources, triggers docker builds, runs automated tests and deploys the code to the respective environments. This pipeline is a good solution to the above mentioned problems because:

1. Terraform allows us to define and manage infrastructure as code, ensuring consistent and repeatable infrastructure provisioning. This eliminates discrepancies between development and production environments.
2. It automates the provisioning and configuration of infrastructure, reducing manual deployment processes, mitigating human errors, and accelerating deployment times.
3. We integrate terraform with testing frameworks to validate infrastructure configurations, reducing the risk of deploying defective infrastructure.
4. We can also trigger the deployment pipeline in response to monitoring events to scale up / down resources to adjust the load and re-provision resources in case of server crashes.

Apart from these, human intervention may be required for the following:

1. Manual actions while setup:
   - Setup of GitHub Action Runner, Terraform, and Ansible.
   - Creating and approving pull requests to trigger the pipeline.
   - Creating necessary branches (dev, release, and main).
   - Creating Release
2. Manual intervention in response to events:
   - Terraform script provisioning failures.
   - Monitoring service alerts with automated resource provisioning failure.

## Use Case

## Pipeline Design
