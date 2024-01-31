echo "Installing Apache server on EC2 instance"

echo "updating the entire system dependencies & libraries"
sudo apt update

echo "using the apt package manager and install apache server"
sudo apt install apache2 -y

echo "displays the status of apache server"
sudo systemctl status apache2
