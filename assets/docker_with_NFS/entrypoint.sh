#!/bin/bash

################################################################################
# This is an example entrypoint file. 
# To run with the conda environment specified in Dockerfile we do the "${CONDA} 
# run -n myenv" prefix.
################################################################################

export SEED_LIST=$"84 735 421"
export epoch=$"1000"
export lm_name=$"gpt2"
export dataset_name=$"substance"
export save_checkpoint_every=$"5000"
export log_step=$"200"


for seed in $SEED_LIST;
    do
    ${CONDA} run -n myenv python exper.py \
        --project_name="lmodeling-wikitext-test" \
        --exper_name="pruned-$lm_name-$dataset_name-$seed" \
        --train_epoch="$epoch" \
        --train_batch_size=250 --eval_batch_size=250 \
        --log_step="$log_step" --save_checkpoint_every="$save_checkpoint_every" \
        --data_name="$dataset_name" \
        --seed="$seed" \
        --lm="$lm_name" \
        --is_pruned=True \
        --nfs_dir='/mnt/<your-lab-nfs>/home/<your-username>' \
        --verbose
    done
