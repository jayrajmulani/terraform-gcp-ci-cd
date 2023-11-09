1. Accomplishments: Summarize in a few bullet points the progress you've made towards implementing your Continuous Deployment pipeline. Link to 1 non-trivial GitHub commit per person that demonstrate progress toward your accomplishments.
- Mitanshu
  - Setup Git flow branch structure https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/2
  - Setup Github runner and install ansible and terraform on machine https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/3
  - Add linting and testing github action https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/4
- Jayraj
  - Create VM and firewall rules which allows http and https traffic using terraform https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/11
- Mithil
  - Build Docker image of coffee-project https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/7
  - Build Ansible playbook to build and run the docker container of coffee-project https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/9
2. Next Steps: Briefly specify the goals for each team member during your next sprint.
 - Configure Nginx to proxy to webserver https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/13
 - Create workspaces for terraform https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/14
 - Use Github action to run terraform https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/15
 - Use Terraform to run Ansible playbook https://github.ncsu.edu/Devops-Terraform-Coffee/coffee-project-devops/issues/16
4. Retrospective for the Sprint: What worked, want didn't work, are what are you going to do differently.
- What worked: 
  - Terraform infrastructre is created successfully
  - Ansible playbook runs webserver docker image
  - Linting and Testing runs properly on the code
- What didn't work:
  - The running webserver runs on port 3000 but it is not visible to external traffic yet, so Nginx needs to be setup and configured.
  - Terraform does not have different infrastruce for different environments
- What will we do differently:
  - PR documentation could be done better, so it auto-closes the issues linked to it PR.
