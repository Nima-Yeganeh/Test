terraform init
terraform plan
terraform apply -auto-approve -parallelism=200
rm -rf .terraform
rm -f .terraform.lock.hcl
rm -f terraform.tfstate
rm -f terraform.tfstate.backup
terraform output

