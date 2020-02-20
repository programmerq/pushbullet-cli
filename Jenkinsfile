node {
    checkout scm
    //tool name: 'Docker 19.03.5', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
    sshagent(['37850802-4ab0-4ffc-b519-2753a85e9625']) {
        withEnv(['DOCKER_HOST=ssh://root@dust01.', "PATH=${tool name: 'Docker 19.03.5', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'}/bin:${env.PATH}"]) {
            //withCredentials([usernamePassword(credentialsId: 'docker-hub-programmerq-token', passwordVariable: 'HUBPASS', usernameVariable: 'HUBUSER')]) {
            withDockerRegistry(credentialsId: 'docker-hub-programmerq-token', toolName: 'Docker 19.03.5') {
                sh'''
                set -ex
                docker build -t programmerq/pushbullet-cli:latest .
                docker push programmerq/pushbullet-cli:latest
                set +e
                docker rmi programmerq/pushbullet-cli:latest
                '''
            }
        }
    }
}

//pipeline {
//    agent any
//    stages {
//        stage('Checkout') {
//            steps {
//                checkout scm
//                // withEnv(['DOCKER_HOST=ssh://jefferya@yunnan.', "PATH=${tool name: 'Docker 19.03.5', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'}/docker:${env.PATH}"]) {
//                //     sh 'docker --version'
//                // }
//                def newImage = docker.build "registry.programmerq.net/programmerq/pushbullet-cli:latest"
//                newApp.push()
//            }
//        }
//    }
//}
