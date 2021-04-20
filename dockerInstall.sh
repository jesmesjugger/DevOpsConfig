sudo yum -y update
sudo yum -y install docker git
sudo usermod -a -G docker ec2-user
sudo systemctl start docker
sudo systemctl enable docker
sudo chkconfig docker on
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose -y
sudo chmod +x /usr/local/bin/docker-compose
