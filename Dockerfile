FROM registry.redhat.io/openshift4/ose-jenkins-agent-base

COPY helm /usr/bin/helm

RUN chmod +x /usr/bin/helm