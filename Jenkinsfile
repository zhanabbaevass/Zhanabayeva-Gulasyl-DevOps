pipeline {
    agent any
    
    environment {
        STUDENT_NAME = 'Gulasyl'
        STUDENT_SURNAME = 'Zhanabayeva'
        STUDENT_GROUP = 'IT2-2310'
        STUDENT_ID = '37225'
    }
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo "Student: ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}"
                echo "Group: ${env.STUDENT_GROUP}"
                echo "Student ID: ${env.STUDENT_ID}"
                echo 'Building application...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running basic tests...'
                sh 'test -f Dockerfile'
                sh 'test -f app.sh'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building Docker Image...'
                sh 'docker build -t zhanabayeva-gulasyl-devops .'
            }
        }
        stage('Docker Run') {
            steps {
                echo 'Running Docker Container...'
                sh 'docker rm -f zhanabayeva-gulasyl-container || true'
                sh '''
                    docker run --name zhanabayeva-gulasyl-container \
                    -e STUDENT_NAME=${STUDENT_NAME} \
                    -e STUDENT_SURNAME=${STUDENT_SURNAME} \
                    -e STUDENT_GROUP=${STUDENT_GROUP} \
                    -e STUDENT_ID=${STUDENT_ID} \
                    zhanabayeva-gulasyl-devops
                '''
            }
        }
    }
}
