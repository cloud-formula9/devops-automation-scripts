# Downloads the jenkins key from website
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Updates system binaries / dependencies
sudo apt-get update

# Installs jenkins on instance / machine
sudo apt-get install jenkins -y

# Displays status of jenkins -> running / stopped
sudo systemctl status jenkins