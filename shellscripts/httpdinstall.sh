#!/bin/bash

# Update package list
echo "Updating package list..."
sudo yum update -y

# Install Apache (httpd)
echo "Installing Apache..."
sudo yum install httpd -y

# Enable and start Apache service
echo "Starting Apache service..."
sudo systemctl enable httpd
sudo systemctl start httpd

# Verify Apache installation
if systemctl is-active --quiet httpd; then
    echo "Apache installed successfully!"
else
    echo "Apache installation failed!"
    exit 1
fi

# Create a new index.html file
echo "Updating index.html..."
echo "<html>
<head><title>Welcome</title></head>
<body>
<h1>Apache is successfully installed on CentOS!</h1>
</body>
</html>" | sudo tee /var/www/html/index.html > /dev/null

# Restart Apache to apply changes
echo "Restarting Apache..."
sudo systemctl restart httpd

# Display Apache status
echo "Apache status:"
sudo systemctl status httpd --no-pager

echo "Installation and configuration complete!"

echo "=== web Output ==="
curl localhost

echo "=================="