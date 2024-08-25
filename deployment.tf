
module "coconut-app" {
source                  = "github.com/ooghenekaro/infra-module/infra-app/coconut-app"
application_name = "coco-app"
family = "coconut-task"
container_name = "coconut-app"
image = "335871625378.dkr.ecr.eu-west-2.amazonaws.com/migrate-app:latest"
memory = "512" # In MiB
cpu = "256"
role_arn= "arn:aws:iam::335871625378:role/ecsTaskExecutionRole"
deployment_group = "coconut-dg"
service_name = "coconut-service"
}
