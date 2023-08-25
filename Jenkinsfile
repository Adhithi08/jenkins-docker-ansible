pipeline{
    agent any

    environment {
        DOCKER_TAG = getVersion()
    }

    stages{
        stage('SCM'){
            steps{
                git branch: 'main', 
                    url: 'https://github.com/Ahmed-Abd-El-gawad/jenkins-docker-ansible.git'
            }
        }
        
        stage('Maven Build'){
            steps{
                sh "mvn clean package"
            }
        }
        
        stage('Docker Build'){
            steps{
                sh "docker build . -t ahmedabdelgawad23/dockeransible:${DOCKER_TAG}"
            }
        }
        
        stage('DockerHub Push'){
            steps{
                withCredentials([string(credentialsId: 'docker-hub', variable: 'dockerHubPwd')]) {
                    sh "docker login -u ahmedabdelgawad23 -p ${dockerHubPwd}"
                }
                sh "docker push ahmedabdelgawad23/dockeransible:${DOCKER_TAG}"
            }
        }
        
        stage('Docker Deploy'){
            steps{
                ansiblePlaybook credentialsId: 'dev-server', disableHostKeyChecking: true, extras: "-e DOCKER_TAG=${DOCKER_TAG}", inventory: 'dev.inv', playbook: 'deploy-docker.yml'
            }
        }
    }
}

def getVersion(){
    def commitHash = sh returnStdout: true, script: 'git rev-parse --short HEAD'
    return commitHash
}
