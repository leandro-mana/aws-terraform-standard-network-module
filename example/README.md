---
noteId: "04b4d580ecf711ecb4a8031445391368"
tags: []

---

# AWS Terraform Standard Network Example

The following example is based on a [main.tf](main.tf) definition that sets the [aws provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) that for simplicity is using the [local backend](https://www.terraform.io/language/settings/backends/local), the source is pointing to the `main` branch of this module, and assuming that Terraform is already [setup](https://learn.hashicorp.com/tutorials/terraform/install-cli) otherwise check this [CICD Docker Image](https://github.com/leandro-mana/docker-cicd-image) for a full Development Environment.

```Bash
# Init
terraform init

# Pointing to Dev Config
export VAR_FILE=config/dev.tfvars

# Plan with dev config
terraform plan \
    -out='plan.out' \
    -var-file=${VAR_FILE} \
    -compact-warnings \
    -lock=true \
    -input=false

# WARNING: Deploy (no auto-approve)
terraform apply \
    -var-file=${VAR_FILE} \
    -compact-warnings

# WARNING: Destroy (no auto-approve)
terraform destroy \
    -var-file=${VAR_FILE} \
```

**Contact:** [Leandro Mana](https://www.linkedin.com/in/leandro-mana-2854553b/)