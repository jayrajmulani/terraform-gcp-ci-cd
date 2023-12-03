```
export GOOGLE_APPLICATION_CREDENTIALS=coffee-project-404417-ae0d7886f2cc.json
terraform init
terraform workspace select -or-create $WORKSPACE
```
```
terraform plan
```
```
terraform apply -auto-approve
```
