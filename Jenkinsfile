pipeline {
    agent any

    tools{
        dockerTool 'docker'
    }

    stages {
        stage('Git Clone') {
            steps {
                git changelog: false, poll: false, url: 'https://github.com/KanishkaJain30/hello-world-webapp.git'
            }
        }
        stage('Deploy') {
            steps {
               script {
                   def image = docker.build("")
               }
            }
        }
    }
}
