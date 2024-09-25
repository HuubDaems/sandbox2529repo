#!/usr/bin/env bash

oc apply -f 'tasks/*yaml' -n pipelines-tutorial

oc apply -f 'maven-pipeline.yaml' -n pipelines-tutorial

oc create -f 'maven-pipeline-run.yaml' -n pipelines-tutorial

