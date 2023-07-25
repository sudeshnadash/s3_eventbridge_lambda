# This Repository contains two folders. 
1. Terraform - This folder contains the terraform code to create S3 bucket, allow eventbridge trigger for every bucket level actions and then let eventbridge send a message to lambda function.

2. Lambda - This folder contains the sample lambda function code to print the event information from Eventbridge

3. Use git clone to clone the repository
  
4. Enter `cd terraform` to enter into the terraform directory
5. Enter `cd env` to enter into the env directory inside terraform folder
6. Execute `terraform init` to initialize the terraform provider
7. Execute `terraform plan` to create a plan of the resources that are going to change or get created
8. Finally,`terraform apply` to apply this plan and get those resources created in AWS account
