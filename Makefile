provision:
	cd infra && terraform apply
.PHONY: provision

destroy:
	cd infra && terraform destroy
.PHONY: destroy