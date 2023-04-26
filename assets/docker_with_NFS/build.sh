#!/bin/sh

docker build -f Dockerfile --build-arg DUMMY='' \
    -t ic-registry.epfl.ch/YOURLAB/YOURUSERNAME/YOURPROJECTNAME \
    --secret id=my_env,src=.env .