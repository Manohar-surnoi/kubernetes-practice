Terraform:

Everything in console.. by mistake if someone edit wrong, then app will go down.. 30min-1hr application restore back to previous
stage if something gooes wrong

Consistant Infr: All environment configs and infra should be same

CRUD--> Create, Read, Update and Delete Infra

Inventory/Resource management: If we see TF script, we know what are the services we are using

Cost Optimisation: creation in 5 min and deletion in 5 min

Dependency management: sg, ec2 instance after creation of all dependencies

Code resue: Roles., Modules

Declarative way of creating infra: You are giving orders to terraform to create infra just by providing right syntax

easy syntax
no sequence
state management: Terraform can track what it created, can update easily

HCL--> Hashicorp Configuration Language 

Terraform--> AWS, AZURE, GCP, Alibaba, Digital Ocean, etc., 
1. Variables
2. datatypes
3. conditions
4. loops
5. functions
	datasources
	locals
	outputs
	providers
	provisioners

Create EC2 instance through Terraform( terraform file extension .tf)
----------------
provider.tf--> Where you can declare what provider you are using
main.tf-->
outputs.tf-->
variables.tf-->


resource "resource-type" "name-of-resource" {
    key = value
}

name
description
ingress mandatory
egress mandatory