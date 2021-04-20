# This is an appspec.yml template file for use with an Amazon ECS deployment in CodeDeploy.
# The lines in this template that start with the hashtag are 
#   comments that can be safely left in the file or 
#   ignored.
# For help completing this file, see the "AppSpec File Reference" in the  
#   "CodeDeploy User Guide" at
#   https://docs.aws.amazon.com/codedeploy/latest/userguide/app-spec-ref.html
version: 0.0
# In the Resources section, you must specify the following: the Amazon ECS service, task definition name, 
# and the name and port of the your load balancer to route traffic,
# target version, and (optional) the current version of your AWS Lambda function. 
Resources:
  - TargetService:
      Type: AWS::ECS::Service
      Properties:
        TaskDefinition: "" # Specify the ARN of your task definition (arn:aws:ecs:region:account-id:task-definition/task-definition-family-name:task-definition-revision-number)
        LoadBalancerInfo: 
          ContainerName: "" # Specify the name of your Amazon ECS application's container
          ContainerPort: "" # Specify the port for your container where traffic reroutes 
# Optional properties
        PlatformVersion: "" # Specify the version of your Amazon ECS Service
        NetworkConfiguration:
          AwsvpcConfiguration:
            Subnets: ["",""] # Specify one or more comma-separated subnets in your Amazon ECS service
            SecurityGroups: ["",""] # Specify one or more comma-separated security groups in your Amazon ECS service
            AssignPublicIp: "" # Specify "ENABLED" or "DISABLED"             
# (Optional) In the Hooks section, specify a validation Lambda function to run during 
# a lifecycle event. 
Hooks:
# Hooks for Amazon ECS deployments are:
    - BeforeInstall: "" # Specify a Lambda function name or ARN
    - AfterInstall: "" # Specify a Lambda function name or ARN
    - AfterAllowTestTraffic: "" # Specify a Lambda function name or ARN
    - BeforeAllowTraffic: "" # Specify a Lambda function name or ARN
    - AfterAllowTraffic: "" # Specify a Lambda function name or ARN