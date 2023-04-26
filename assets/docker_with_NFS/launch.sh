#!/bin/bash

image_name="<Your IMAGE name>"

job_prefix="<Your job PREFIX>"
job_suffix="<Your job SUFFIX>"
job_name="$job_prefix-$job_suffix"

command=$1
################################################################################
# Run this for train mode

# TODO:
# Change the number of GPUs accordingly
# Change the NodeType accordingly
################################################################################
if [ "$command" == "run" ]; then
	echo "Job [$job_name]"

	runai submit "$job_name" \
		-i "$image_name" \
		--gpu 1 \
		--node-type G10
		# --pvc YOURPVC:MOUNTDESTINATION \  # Uncomment this line if you want to mount a PVC
		# --large-shm \						# Uncomment this line if you want to mount a PVC
	exit 0
fi

################################################################################
# Run this for interactive mode
################################################################################
if [ "$command" == "run_bash" ]; then
	echo "Job [$job_name]"

	runai submit "$job_name" \
		-i "$MY_IMAGE" \
		--gpu 1 \
		--interactive \
		--attach \
        --node-type G10
		# --pvc YOURPVC:MOUNTDESTINATION \  # Uncomment this line if you want to mount a PVC
		# --large-shm \						# Uncomment this line if you want to mount a PVC
	exit 0
fi

if [ "$command" == "log" ]; then
	runai logs "$job_name" -f
	exit 0
fi

if [ "$command" == "stat" ]; then
	runai describe job "$job_name" 
	exit 0
fi

if [ "$command" == "del" ]; then
	runai delete job "$job_name"
	exit 0
fi

if [ $? -eq 0 ]; then
	runai list job
fi
