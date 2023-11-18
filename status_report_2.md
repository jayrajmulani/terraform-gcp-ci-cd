
### Additional Scope added after Feedback 1
- Enable security check using `snyk` (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/24) - Eligible for bonus points
- Enable rate limiting to prevent DoS / DDoS attacks (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/36) - Eligible for bonus points
- Setup Prometheus logging and monitoring / visualization using Grafana (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/25)

### Accomplishments

**Summarize in a few bullet points the progress you've made towards implementing your Continuous Deployment pipeline. Link to 1 non-trivial GitHub commit per person that demonstrate progress toward your accomplishments.**

- Mitanshu (mresham)
	- Configure NGINX using Ansible Playbook (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/13)
	- Fixed issues and bugs:
		- Terraform fails to delete resources (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/29)
		- Fix Terraform out of sync infrastructure (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/31)
- Jayraj (jmulani2)
	- Write GitHub actions to trigger terraform scripts (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/15)
	- Configure Terraform code to support multiple environments (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/14)
	- Trigger ansible playbook after terraform resource provisioning is complete (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/16)

- Mithil (mdani)
	- Dockerize App and update ansible to deploy as docker container (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/23)
	- Contributed to debugging in issues faced while working on:
		- Trigger ansible playbook after terraform resource provisioning is complete (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/16)
		
### Next Steps
**Briefly specify the goals for each team member during your next sprint.**
- Mithil (mdani)
	- Setup prometheus logging and monitoring (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/25)
	- Autoscaling of resources based on Utilization (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/27)
- Jayraj (jmulani2)
	- Enable security check using `snyk` (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/24)
	- Enable rate limiting to prevent DoS / DDoS attacks (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/36)
	- Update deprecated set-output to setOutput (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/35)
- Mitanshu (mresham)
	- Update linting to check all code (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/19)
	- Health check service (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/28)
	- Automatic creation of release when merged to main (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/26)

### Retrospective for the Sprint
**What worked, want didn't work, are what are you going to do differently?**

#### What worked?
- We were able to setup the provisioning pipeline.
- Github actions now trigger terraform scripts, ansible playbooks and deploys application
#### What didn't work:
- Terraform state got out of sync when instance was manually updated
- We faced issues with setting up SSH Keys in Terraform and passing it on to Ansible
#### What will we do differently:
- We lagged in managing the task dependencies. 
	- For example, Dockerizing app (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/23) was done after Terraform was able to run Ansible scripts (https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/16)
- Assigning priorities to issues - We didn't assign priorities to issues in the previous sprint, this time we aim to streamline the tasks by assigning proper priority and add dependency in the issue where needed.
