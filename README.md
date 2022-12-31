# nexus terraform aws

## Setup the environment 
```
terraform init
```
## Provision the environment 
```
terraform apply --auto-approve
```
## Destroy the environment 
```
terraform destroy --auto-approve
```
## Get the admin password of nexus server 
```
cat /home/ec2-user/nexus/sonatype-work/nexus3/admin.password
```
