# Two EC2 Instances on AWS with Terraform

  This is a project for my first provisioning on AWS with terraform. I just needed to learn,
on how to set my infrastructure on AWS with a HCL script. And if you are learning these things like me. I hope this will help you too. So let's do it.

## Some requirements
  * An IAM user with credentials and region set
  * A bucket s3.
  * An AWS account with sufficient permissions.

## First you'll need to git clone this repo 
  * git clone https://github.com/afro-juliano/Two-Instances-on-AWS-trough-Terraform.git

  A folder on your home directory will be created in my case this is ~/afro/Two-Instances-on-AWS-trough-Terraform.
  After those steps being concluded you should cd into your new folder and run some commands. In order to don't need 
  to have terraform installed on your machine you can run a docker container with the hashicorp image light version and exporting the Access key 
  and secret access key on your aws account. You'll need to have a IAM user in which you store your credentials access the infrastructure.

  * docker run -it -v $PWD:/app -w /app --entrypoint "" hashicorp/terraform:light sh
  * terraform init
  * export AWS_ACCESS_KEY_ID="Your Access key"
  * export AWS_SECRET_ACCESS_KEY="Your secret access key"

    ![image](https://github.com/afro-juliano/Two-Instances-on-AWS-trough-Terraform/assets/82853604/6f1600d0-bb4d-4a76-a044-61777259932a)


  * terraform plan -out my_plan

  * terraform apply "my_plan"
    
    ![image](https://github.com/afro-juliano/Two-Instances-on-AWS-trough-Terraform/assets/82853604/09219e4b-6bab-4e67-8360-f6e1cf03ad27)

  * If you are learning like me It's important to always remember to destroy your infra after you are done. Cause you don't want to have
    any surprises on your AWS billing.
  * terraform destroy
    
    ![image](https://github.com/afro-juliano/Two-Instances-on-AWS-trough-Terraform/assets/82853604/566c3789-d951-4495-8c4e-5452ad7f61c3)
