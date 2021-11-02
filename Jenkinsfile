pipeline {
   agent any
    stages {
        
        stage('Build Docker Image') {
           
            steps {
                script {
                    app = docker.build("manalighar/myprojectDocker")
                    app.inside {
                        sh 'echo $(curl localhost:80)'
                    }
                }
            }
        }
        stage('Push Docker Image') {
           
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }   
}
