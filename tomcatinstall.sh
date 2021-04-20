sudo yum -y install tomcat httpd
sudo yum -y install tomcat-webapps tomcat-admin-webapps tomcat-docs-webapp tomcat-javadoc
sudo systemctl start tomcat
sudo systemctl enable tomcat
#sudo nano /usr/share/tomcat/conf/tomcat-users.xml
#<user username="[username]" password="[password]" roles="manager-gui,admin-gui"/>
#<tomcat-users>
#<user username="jdoe" password="En4EW25eI0" roles="manager-gui,admin-gui"/>
aws ecr create-repository --repository-name getting-started --region us-east-1
docker tag getting-started 648106300517.dkr.ecr.us-east-1.amazonaws.com/getting-started
aws ecr get-login-password | docker login --username AWS --password-stdin 648106300517.dkr.ecr.us-east-1.amazonaws.com
docker push 648106300517.dkr.ecr.us-east-1.amazonaws.com/getting-started
docker run -dp 3000:3000 648106300517.dkr.ecr.us-east-1.amazonaws.com/getting-started
ecs-cli configure --cluster cluster_name --default-launch-type EC2 --region us-east-1 --config-name configuration_name
#######################
codedeploy permission for ASG
***************************
  "autoscaling:CompleteLifecycleAction",
                "autoscaling:DeleteLifecycleHook",
                "autoscaling:DescribeAutoScalingGroups",
                "autoscaling:DescribeLifecycleHooks",
                "autoscaling:PutLifecycleHook",
                "autoscaling:RecordLifecycleActionHeartbeat",
                "autoscaling:CreateAutoScalingGroup",
                "autoscaling:UpdateAutoScalingGroup",
                "autoscaling:EnableMetricsCollection",
                "autoscaling:DescribeAutoScalingGroups",
                "autoscaling:DescribePolicies",
                "autoscaling:DescribeScheduledActions",
                "autoscaling:DescribeNotificationConfigurations",
                "autoscaling:DescribeLifecycleHooks",
                "autoscaling:SuspendProcesses",
                "autoscaling:ResumeProcesses",
                "autoscaling:AttachLoadBalancers",
                "autoscaling:AttachLoadBalancerTargetGroups",
                "autoscaling:PutScalingPolicy",
                "autoscaling:PutScheduledUpdateGroupAction",
                "autoscaling:PutNotificationConfiguration",
                "autoscaling:PutLifecycleHook",
                "autoscaling:DescribeScalingActivities",
                "autoscaling:DeleteAutoScalingGroup",
                "ec2:DescribeInstances",
                "ec2:DescribeInstanceStatus",
                "ec2:TerminateInstances",
                "tag:GetResources",
                "sns:Publish",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:PutMetricAlarm",
                "elasticloadbalancing:DescribeLoadBalancers",
                "elasticloadbalancing:DescribeInstanceHealth",
                "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
                "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
                "elasticloadbalancing:DescribeTargetGroups",
                "elasticloadbalancing:DescribeTargetHealth",
                "elasticloadbalancing:RegisterTargets",
                "elasticloadbalancing:DeregisterTargets"
