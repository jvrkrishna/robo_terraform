dev:
	@rm -rf .terraform
	@terraform init
	@terraform apply -auto-approve  -var-file=env-dev/main.tfvars

destroy:
	@terraform destroy -auto-approve  -var-file=env-dev/main.tfvars


prod:
	@rm -rf .terraform
	@terraform init
	@terraform apply -auto-approve  -var-file=env-prod/main.tfvars
