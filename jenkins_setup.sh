#/bin/sh

# This is a Jenkins setup script to ease getting up and running. Download by running
# "wget https://github.com/KarlMcBride/jenkins_playground/blob/master/jenkins_setup.sh && ./jenkins_setup.sh"

sudo apt install -y openjdk-11-jdk

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins

sudo systemctl start jenkins
sudo systemctl status jenkins

# You can also use the following commands to control auto-startup of Jenkins
# sudo systemctl disable jenkins
# sudo systemctl enable jenkins
