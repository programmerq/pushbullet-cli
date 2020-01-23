node {
    checkout scm
    tool name: 'Docker 19.03.5', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
    withEnv(["PATH=${tool name: 'Docker 19.03.5', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'}/docker:${env.PATH}"]) {
        sh'''
        set -ex
        docker build -t registry.programmerq.net/programmerq/pushbullet-cli:latest .
        docker push registry.programmerq.net/programmerq/pushbullet-cli:latest
        set +e
        docker rmi registry.programmerq.net/programmerq/pushbullet-cli:latest
        '''
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
