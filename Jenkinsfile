pipeline{
    agent any
    tools{
        jdk 'OpenJDK11'
    }
    stages{
        stage('Fetching Code from Github'){
            steps{
                git branch: 'main' , url: 'https://github.com/hkhcoder/vprofile-project'
            }
        }
        stage('Building'){
            steps{
                sh 'mvn install -DskipTests'
            }
            post{
                success{
                    echo "Successful Building!!!"
                    echo "Now Archiving Artifacts bawa"
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Performing Unit Tests'){
            steps{
                sh 'mvn test'
            }
        }
    }
}