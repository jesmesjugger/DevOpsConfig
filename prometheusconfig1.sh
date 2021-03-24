*****************Step 1: Create the prometheus.yml file.**************

sudo vi /etc/prometheus/prometheus.yml

*********************Step 2: Copy the following contents to the prometheus.yml file.**********

global:
  scrape_interval: 10s

scrape_configs:
  - job_name: 'prometheus'
    scrape_interval: 5s
    static_configs:
      - targets: ['localhost:9090']


********************Step 3: Change the ownership of the file to prometheus user.***************

sudo chown prometheus:prometheus /etc/prometheus/prometheus.yml


*******************Step 1: Create a prometheus service file.*************

sudo vi /etc/systemd/system/prometheus.service

*******************Step 2: Copy the following content to the file.********

[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
    --config.file /etc/prometheus/prometheus.yml \
    --storage.tsdb.path /var/lib/prometheus/ \
    --web.console.templates=/etc/prometheus/consoles \
    --web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target

*******************Step 3: Reload the systemd service to register the prometheus service and start the prometheus service.**********

sudo systemctl daemon-reload
sudo systemctl start prometheus
Check the prometheus service status using the following command.

sudo systemctl status prometheus