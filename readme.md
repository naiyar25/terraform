# Terraform Learning Repository (AWS Infrastructure as Code)

This repository contains my hands-on Terraform learning projects using AWS.  
The goal of this repository is to understand how Infrastructure as Code (IaC) works in real DevOps environments and how Terraform is used to provision and manage cloud infrastructure.

Through these projects, I practiced various Terraform concepts such as modules, variables, lifecycle rules, data sources, count, for_each, and environment configurations.

--------------------------------------------------

REPOSITORY STRUCTURE

terraform/
│
├── terraform_project
├── terraform_modules
├── terraform_count
├── terraform_for_each
├── terraform_lifecycle
├── terraform_datasources
├── terraform_tfvars
│
├── terraform_revision_summary.docx
├── terraform_revision_summary_with_commands.docx
└── README.md

Each folder demonstrates a specific Terraform concept used in real DevOps environments.

--------------------------------------------------

TERRAFORM CONCEPTS COVERED

1. Basic Terraform Project

Folder:
terraform_project

This project demonstrates the basic Terraform workflow.

Terraform lifecycle commands used:

terraform init
terraform plan
terraform apply
terraform destroy

Purpose:
- Understand Infrastructure as Code
- Create AWS resources using Terraform

--------------------------------------------------

2. Terraform Modules

Folder:
terraform_modules

This project demonstrates modular infrastructure design.

Example module usage:

module "ec2_instance" {
  source = "./modules/ec2"

  instance_type = "t3.micro"
  ami_id        = "ami-xxxxxxx"
}

Benefits:
- Reusable infrastructure
- Cleaner architecture
- Easier maintenance

--------------------------------------------------

3. Terraform Count

Folder:
terraform_count

This demonstrates creating multiple resources using count.

Example:

resource "aws_instance" "server" {
  count = 2
}

Creates:

aws_instance.server[0]
aws_instance.server[1]

--------------------------------------------------

4. Terraform for_each

Folder:
terraform_for_each

This demonstrates creating multiple resources using for_each.

Example:

for_each = {
  dev  = {}
  prod = {}
}

Creates:

aws_instance.server["dev"]
aws_instance.server["prod"]

for_each is preferred over count for stable resource identification.

--------------------------------------------------

5. Terraform Lifecycle Rules

Folder:
terraform_lifecycle

This demonstrates lifecycle management of resources.

Example:

lifecycle {
  create_before_destroy = true
}

Lifecycle rules used:

create_before_destroy
prevent_destroy
ignore_changes

These rules help manage infrastructure updates safely.

--------------------------------------------------

6. Terraform Data Sources

Folder:
terraform_datasources

This project demonstrates reading existing infrastructure using data sources.

Example: Fetch latest Amazon Linux AMI.

data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

Benefits:

- Avoid hardcoding AMI IDs
- Automatically use latest images

--------------------------------------------------

7. Terraform Variables and tfvars

Folder:
terraform_tfvars

This project demonstrates environment-based configuration using tfvars files.

Files used:

dev.tfvars
prod.tfvars

Example command:

terraform apply -var-file="dev.tfvars"

This allows different configurations for dev and production environments.

--------------------------------------------------

TERRAFORM WORKFLOW

Typical Terraform workflow:

Write Terraform Code
        │
        ▼
terraform init
        │
        ▼
terraform plan
        │
        ▼
terraform apply
        │
        ▼
Infrastructure Created

--------------------------------------------------

SECURITY BEST PRACTICES

Best practices followed in this repository:

- Use .gitignore to ignore Terraform state files
- Avoid storing secrets in code
- Use variables for configuration
- Use modular Terraform architecture

--------------------------------------------------

LEARNING OUTCOME

Through these projects, I gained practical experience with:

- Terraform Infrastructure as Code
- AWS infrastructure provisioning
- Terraform modules
- Terraform lifecycle management
- Data sources
- Variables and environment configuration

--------------------------------------------------

FUTURE LEARNING ROADMAP

Next DevOps tools to learn:

- Docker
- Jenkins
- Kubernetes
- CI/CD pipelines
- Advanced Terraform deployments

--------------------------------------------------

AUTHOR

Naiyar Ansari

DevOps | Cloud | Infrastructure Automation