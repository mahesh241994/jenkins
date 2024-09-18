sudo apt update
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key


echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install default-jdk -y
sudo apt install jenkins -y
systemctl start jenkins.service
systemctl enable jenkins.service
sudo apt install maven -y
java --version
jenkins --version
mvn --version
