I have leveraged terraform to provision several infrastructure,
I recently used terraform to implement a multi-tier web application infrastructure on aws.
While working on this task, I modularize my terraform template by putting the main resource code
in the root module which resides in the project repository on Github so I make reference to the source
of my root module for provisioning different aws resources like VPC, EC2, RDS, S3 and so on.
Modularizing my terraform code helped me backup my code and also promote reusability of my code with other projects.
Having done all this, I also makesure my statefile is stored in a remote storage space like S3
why? because the statefile holds the config details of the infrastructure and locally exposing it makes our environment
vulnurable to unauthorized access. I also lock the statefile with Dynamodb table to makesure statefile update
with "terraform apply" is allowed one at a time and this prevent corruptiion of the statefile.
Finally, I created Enviromental Variables for each environment to handle variability between DEV, Test, Stage and Prod env.
Also I have been in situation where the solution architect created multiple resources without informing the infra-team so
i had to import all this resources into the existing infrastructure via terraform import and the root module was also updated.
