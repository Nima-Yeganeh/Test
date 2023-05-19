terraform init
terraform plan
terraform apply -auto-approve -parallelism=1000
rm -rf .terraform
rm -f .terraform.lock.hcl
rm -f terraform.tfstate
rm -f terraform.tfstate.backup
rm -f .terraform.tfstate.lock.info
terraform output

