#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

# Download checkpoints for sample attacks and defenses.
./download_checkpoints.sh
#sample_targeted_attacks/download_checkpoints.sh
#sample_defenses/download_checkpoints.sh

# Download dataset.
mkdir dataset/images
python dataset/download_images.py \
  --input_file=dataset/dev_dataset.csv \
  --output_dir=dataset/images/
