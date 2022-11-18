# Terraform Azure Static Site #

Deploying a simple static site to Azure Storage using Terraform and Terraform Cloud.

```
make provision
```

```
az storage blob upload --file ./www/index.html --container-name '$web' --account-name lwittstaticsitestorage
```