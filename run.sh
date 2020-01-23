#!/bin/bash -xe
docker run --rm \
    -e CASC_JENKINS_CONFIG=/workspace/jenkins.yml \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(pwd):/build \
    -v $(pwd)/jenkins.yml:/workspace/jenkins.yml \
    -v $(pwd)/Jenkinsfile:/workspace/Jenkinsfile \
    -v $(pwd)/plugins.txt:/workspace/plugins.txt jenkins4eval/jenkinsfile-runner
