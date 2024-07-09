pipeline {
    agent { label 'node1' }
    stages {
        stage('clone') {
            steps {
                git branch: 'master', credentialsId: 'git_token', url: 'https://github.com/sagarfulari/java-ui-app.git'
            }
        }
        
        stage('clean') {
            steps {
                sh "mvn clean"
            }
        }
        
        stage('package') {
            steps {
                sh "mvn package" 
            }
        }
        
        stage('build_docker_image') {
            steps {
                sh "docker build -t test-ui ."
            }
        }
        
        stage("deploy") {
            steps {
                sh "docker run -d -p 9000:8080 --name java-ui test-ui"
            }
        }
    }
}
