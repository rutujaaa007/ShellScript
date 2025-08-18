pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/rutujaaa007/ShellScript.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                // Add your build commands here, e.g.,
                // sh 'mvn clean install'
            }
        }
    }
}
