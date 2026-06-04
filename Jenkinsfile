pipeline {
    agent any

    environment {
        K8S_SERVER = "ec2-13-127-214-192.ap-south-1.compute.amazonaws.com"
        REMOTE_DIR = "/home/ubuntu"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out source code from GitHub"
                checkout scm
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                echo "Deploying application to Kubernetes EC2 through SSH"

                sshagent(credentials: ['k8s-ec2-ssh-key']) {
                    sh """
                        ssh -o StrictHostKeyChecking=no ubuntu@${K8S_SERVER} '
                            cd ${REMOTE_DIR} &&
                            git pull origin main &&
                            kubectl apply -f k8s/ &&
                            kubectl rollout status deployment/devops-flask-app
                        '
                    """
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                echo "Verifying Kubernetes deployment"

                sshagent(credentials: ['k8s-ec2-ssh-key']) {
                    sh """
                        ssh -o StrictHostKeyChecking=no ubuntu@${K8S_SERVER} '
                            kubectl get pods &&
                            kubectl get svc
                        '
                    """
                }
            }
        }
    }

    post {
        success {
            echo "Deployment completed successfully"
        }
        failure {
            echo "Deployment failed"
        }
    }
}
