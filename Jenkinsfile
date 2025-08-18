pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Check out the code from your repository
                git branch: 'main', url: 'https://github.com/rutujaaa007/ShellScript.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                echo 'Build step is complete.'
            }
        }
        stage('Testing') {
            steps {
                echo 'Testing in Process'
            }
        }
        stage('Run') {
            steps {
                echo 'Executing '
            }
        }
        stage('Notify Success') {
            steps {
                echo 'Pipeline completed successfully! 🎉'
            
            }
        }
    }
}
