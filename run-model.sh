# # The command for training is - ` bash run_model.sh train <train_file_path>
# <val_file_path>’ . This should generate a tagging model named `<kerberos_id>_model’
# (E.g. `csz198394_model’) along with possibly other files needed for inference.
#  Command for inference - `bash run_model.sh test <test_file_path> outputfile.txt’ . This
# should generate `outputfile.txt’ having predicted parsed output on each line.


#!/bin/bash

mode="$1"
train_file="$2"
val_file="$3"
test_file="$4"
output_file="$5"
kerberos_id="me1180650"
model_name="${kerberos_id}_model"

if [ "$mode" = "train" ]; then
    # Add your training command here, for example:
    python train.py --train-file "$train_file" --val-file "$val_file" --model-name "$model_name"
elif [ "$mode" = "test" ]; then
    # Add your inference command here, for example:
    python infer.py --test-file "$test_file" --output-file "$output_file"
fi

