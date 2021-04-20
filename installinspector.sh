#***Install inspector agent
#!/bin/bash
yum -y update
yum install httpd -y
wget https://inspector-agent.amazonaws.com/linux/latest/install
bash install
/etc/init.d/awsagent start
# configuring cloudwatch agent
#sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard