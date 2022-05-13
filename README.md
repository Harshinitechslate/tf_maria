# Maria DB with Network Rules

## Introduction
This is the terraform script to create resource group, mariadb server and nsg with security rule

## Folder Structure
main 
    main -> which has main terraform scripts
    variables -> is having all the variables and default values
    providers.tf -> is having all the providers required
    README.md -> is containing all the help
modules  -> will have all the sub folders where respetive modules are written
    resourcegroup
    mariadb server
    networksecurity group with security rule

## How to Run
Run all the terraform commands from tf_main folder
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy



