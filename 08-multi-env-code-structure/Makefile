default:
    rm -rf.terraform
    terraform init -backend-config=env-$(env)/state.tfvars
    terrform $(action) -auto-approve -var-file=env-$(env)/main.tfvars

dev-apply:
    rm -rf.terraform
    terraform init -backend-config=env-dev/state.tfvars
    terrform apply -auto-approve -var-file=env-dev/main.tfvars

dev-destroy:
    rm -rf.terraform
    terraform init -backend-config=env-dev/state.tfvars
    terrform destroy -auto-approve -var-file=env-dev/main.tfvars

prod-apply:
    rm -rf.terraform
    terraform init -backend-config=env-prod/state.tfvars
    terrform apply -auto-approve -var-file=env-prod/main.tfvars

prod-destroy:
    rm -rf.terraform
    terraform init -backend-config=env-prod/state.tfvars
    terrform destroy -auto-approve -var-file=env-prod/main.tfvars


