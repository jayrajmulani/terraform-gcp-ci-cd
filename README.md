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

Use Case: Merge to `main` branch triggers the production deployment workflow

Problem:
The problem with not having an automated deployment pipeline when a release is created is that it introduces a higher likelihood of human error, slows down the deployment process, leads to potential inconsistencies between environments, hinders reproducibility of deployments, and limits scalability. Manual deployments are more time-consuming, less reliable, and can result in mistakes such as deploying the wrong version or missing critical configuration steps. This can ultimately erode confidence in the release process, particularly in high-stakes environments like production. Automated pipelines, on the other hand, offer consistency, reliability, and efficiency, providing a smoother and more reliable path to deploying releases in a controlled and predictable manner.

Preconditions:
- A DevOps pipeline is set up with Terraform for infrastructure provisioning.
- The main branch is designated as the target for the production deployment.
- The development team and DevOps personnel have access to the necessary tools and permissions to merge code to the main branch and trigger the deployment workflow.

Main Flow:

1. A release engineer creates and prepares a new `release` branch from the `dev` branch. Then, the release engineer initiates a pull request, requesting that their changes be merged into the main branch. Code reviews, automated tests, and validations are performed as part of the PR process. In case, of errors, new code is committed on the release branch which runs the pipeline again.
1. Once the code review is approved and all tests pass, the PR is approved for merging. The release engineer merges the changes into the `main` branch. The merge to the `main` branch triggers an automatic deployment workflow within the DevOps pipeline.
1. The pipeline uses Terraform to provision or update the required infrastructure components on the cloud platform, such as servers, databases, and networking. Then the pipeline automatically deploys the application code to the provisioned infrastructure.
1. Monitoring and alerting mechanisms are active, continuously collecting data and promptly notifying the team in case of any issues or anomalies.

Subflows:

Rollback Mechanism (Alternative Flow):
- If issues are detected during deployment or integration testing, the pipeline can initiate an automated rollback to the last stable version of the application.

Manual Intervention (Alternative Flow):
- In case of exceptional circumstances or issues not addressed by the pipeline, the team may need to perform manual interventions or configurations to resolve the problem.

Documentation and Reporting (Optional Subflow):
- The pipeline generates documentation and reports for tracking infrastructure changes, which can be accessed by team members for reference and analysis.

This use case describes how merging code into the main branch triggers the deployment workflow, covering the primary flow, subflows, and alternative flows that ensure an efficient and reliable deployment process while maintaining the quality and stability of the Node.js application.


## Pipeline Design
