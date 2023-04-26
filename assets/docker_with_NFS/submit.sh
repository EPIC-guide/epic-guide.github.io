#!/bin/bash

################################################################################
# If you need to mount a persistent volume (pvc) (e.g. NFS or scratch) specify 
# which one + where to mount it after the colon.
# To find out the pvc-s avalaible to you, see "kubectl get pvc" 
# in §useful-runai--kubectl-commands.
################################################################################

runai submit --name THENAMEOFYOURJOB \
    -i ic-registry.epfl.ch/YOURLAB/YOURUSERNAME/YOURPROJECTNAME  \
    --gpu 1 --cpu 1 \
    --pvc YOURPVC:MOUNTDESTINATION \
    --node-type G10
    # --interactive -- sleep infinity => makes it interactive and stops from logging out
    # --attach => if you get sleep infinity deprecated error you might just need to do "--attach" and remove “-- sleep infinity”, see more in §vscode-for-runai
    # --command -- run.sh => overrides entrypoints specified by the docker image