#########Step 1 
sudo nano /etc/systemd/system/node_exporter.service
[Unit]
************************ Contenents*************
Description=Node Exporter
After=network.target

[Service]
User=node_exporter
Group=node_exporter
Type=simple
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target
###################### Reload#############
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
