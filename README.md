# Terraform Modules #

[__Terraform Documentation__]()

In a separate dedicated AWS repository, I have custom documentation on everything Terraform.

[__Terraform Modules__]()

In a separate dedicated AWS repository, these custom Terraform Modules are above and beyond what are available from Terraform registry.

Each module consists of a __name folder__ followed by __version folder__ which stores the Terraform code files, usually ```main.tf```, ```variables.tf``` and ```outputs.tf```. Each module should be able to be __referenced__ and be executed on any computer with Terraform CLI installed.

[__Org Specific Terraform Configurations__]()

Above modules and those from Terraform registry are usually referenced in my other dedicated repositories named __```tf-<org-or-department>```__. 

For example: ```tf-hasilo```. These org-specific repositories and folders in them mostly contain ```variables.tfvars``` files to replace default variable values from above modules.

> These configurations are what can be used to rebuild infrastructure in a given org as necessary.

__CICD Computer running Terraform configurations__

The computer, usually a CICD computer but occasionally your dev/admin privileged laptop, executing Terrform configuration essentially downloads and executes org-specific configurations. 

> Secrets such as ```Access Key Id``` and ```Secret Access Key``` should only reside on the computer as short-lived credentials and/or encrypted. They should never be in any of org-specific configurations or in modules.

> I like using ```profile``` (encrypted with aws-vault) and __Role ARN__ in the Terraform __provider block__.
