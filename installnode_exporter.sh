wget https://github.com/prometheus/node_exporter/releases/download/v0.15.2/node_exporter-0.15.2.linux-amd64.tar.gz
tar -xf node_exporter-0.15.2.linux-amd64.tar.gz
sudo mv node_exporter-0.15.2.linux-amd64/node_exporter /usr/local/bin
rm -r node_exporter-0.15.2.linux-amd64*
sudo useradd -rs /bin/false node_exporter
