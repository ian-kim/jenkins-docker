#!/bin/bash

function run_jenkins() {
    CWD=`pwd`
    docker run --rm -p 8080:8080 -v $CWD/jenkins:/var/jenkins_home -u root -d jenkins
}

run_jenkins