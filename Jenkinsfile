pipeline {
    agent any

    triggers {
        pollSCM('* * * * *') // Poll SCM for changes every minute
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the repository
                git url: 'https://github.com/vatsal34272/svit-demo.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                // Run the deploy script
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}

