pipeline{
    agent any
    environment{
        DOCKERHUB_CREDENTIALS=credentials('vildanasuta')
    }
    stages{
        stage('Docker build') {
            steps{
                sh 'docker build -t demo-0.0.1 .'
                
            }
        }
        stage('login to Docker Hub'){
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'

            }

        }
        stage('push image'){
            steps{
                sh 'docker push demo-0.0.1'
            }
        }
        
    }
 post {
    always{
        sh 'docker logout'
    }
 }   
}