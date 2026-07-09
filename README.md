# AWS Terraform Backend

## Overview

This project demonstrates how to configure a **production-ready Terraform backend** using **Amazon S3** for remote state storage and **Amazon DynamoDB** for state locking. It also introduces **Terraform Workspaces** to manage multiple environments with separate state files.

---

## Objective

Configure Terraform for team collaboration by implementing remote state management, state locking, and multi-environment deployments.

---

## Architecture

```text
                 Terraform
                      │
                      ▼
              Amazon S3 Backend
                      │
              terraform.tfstate
                      │
                      ▼
          Amazon DynamoDB Table
               (State Locking)
                      │
        ┌─────────────┼─────────────┐
        ▼             ▼             ▼
      Dev          Test          Prod
   Workspace     Workspace     Workspace
```

---

## Project Structure

```text
aws-terraform-backend/

├── backend.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── data.tf
├── main.tf
├── outputs.tf
└── .gitignore
```

---

## Terraform Concepts Covered

* Providers
* Resources
* Variables
* Outputs
* Data Sources
* Local Backend
* Remote Backend
* Terraform State
* Backend Configuration
* Amazon S3 Backend
* DynamoDB State Locking
* Terraform Workspaces

---

## AWS Resources Created

* Amazon S3 Bucket
* Amazon DynamoDB Table
* Amazon EC2 Instance

---

## Key Features

* Remote Terraform state stored in Amazon S3
* State locking using Amazon DynamoDB
* Multi-environment support with Terraform Workspaces
* Latest Amazon Linux AMI retrieved using a Data Source
* Reusable and organized Terraform configuration

---

## Terraform Commands

Initialize Terraform

```bash
terraform init
```

Validate configuration

```bash
terraform validate
```

Format configuration

```bash
terraform fmt
```

Preview execution plan

```bash
terraform plan
```

Apply infrastructure

```bash
terraform apply
```

Destroy infrastructure

```bash
terraform destroy
```

---

## Workspace Commands

Create a workspace

```bash
terraform workspace new dev
```

List workspaces

```bash
terraform workspace list
```

Switch workspace

```bash
terraform workspace select dev
```

Show current workspace

```bash
terraform workspace show
```

---

## State Commands

List resources

```bash
terraform state list
```

Show resource details

```bash
terraform state show <resource-address>
```

Remove a resource from state

```bash
terraform state rm <resource-address>
```

Move a resource in state

```bash
terraform state mv <source> <destination>
```

Pull the current state

```bash
terraform state pull
```

---

## Learning Outcomes

* Understood how Terraform stores infrastructure state
* Configured a remote backend using Amazon S3
* Implemented state locking with DynamoDB
* Managed multiple environments using Terraform Workspaces
* Practiced Terraform state management commands

---

## Future Enhancements

* Reusable Terraform Modules
* CI/CD Integration
* GitHub Actions
* Provisioners & Connection Blocks
* Multi-Account AWS Deployments

---

## Author

**Pranay Kant**

DevOps | AWS | Terraform | Kubernetes | Docker | Linux
