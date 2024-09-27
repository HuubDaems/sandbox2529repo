#!/usr/bin/env bash

PROJECT=pipelines-tutorial


oc apply -f 'workspace/*yaml' -n $PROJECT

oc apply -f 'tasks/*yaml' -n $PROJECT

oc apply -f 'maven-pipeline.yaml' -n $PROJECT

# oc create -f 'maven-pipeline-run.yaml' -n $PROJECT

oc apply -f 'trigger-template-maven-pipeline.yaml' -n $PROJECT

oc apply -f 'trigger-binding-maven-pipeline.yaml' -n $PROJECT

oc apply -f 'event-listener-maven-pipeline.yaml' -n $PROJECT

