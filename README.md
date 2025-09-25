# Terraform - Docker Infrastructure as Code (IaC)

##  Project Overview
This project provisions an **Nginx Docker container** using **Terraform** with the Docker provider.  
It demonstrates Infrastructure as Code (IaC) by managing container lifecycle with Terraform commands.

---

##  Steps to Run

1. **Initialize Terraform**
   ```bash
   terraform init
## 2. Preview changes
    ```bash
    terraform plan
## 3. Apply configuration (create container)
- terraform apply -auto-approve
## 4. Check container
- Run "docker ps" to see the container.
- Open http://localhost:8081
 in a browser to view the Nginx welcome page
## 5. View Terraform state
- terraform state list
## 6. terraform state list
- terraform state list
## 7. Destroy infrastructure (remove container + image)
- terraform destroy -auto-approve
## Port Information
- Nginx runs inside the container on port 80.
- It is mapped to host port 8081 → access at:http://localhost:8081
## Deliverables
- main.tf (Terraform code)
- Logs: terraform-init.log, terraform-plan.log, terraform-apply.log, terraform-state.log, terraform-destroy.log
  

