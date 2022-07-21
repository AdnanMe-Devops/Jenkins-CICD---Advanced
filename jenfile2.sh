 Docker Based Builds - Install and Configure
sudo apt-get install -y docker.io
docker
docker ps
sudo -s
docker ps
docker info
cat /etc/group
usermod -aG docker jenkins
exit
sudo su - jenkins
whoami
docker ps
docker info
exit
pipeline {
    agent {
        node {
            label 'agent1'
        }
    }
    stages {
        stage('Docker') {
            steps {
                sh "whoami"
                sh "docker info"
                sh "docker ps"
            }
        }
    }
}
