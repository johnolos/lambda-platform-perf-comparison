#!/bin/bash
declare -a folders=("go" "java" "python3" "nodejs8", "rust")

export AWS_PROFILE=default
export AWS_REGION=us-east-1

for i in `seq 1 11`;
do
  for folder in "${folders[@]}"
  do
    cd $folder
    pwd

    sls deploy --region $AWS_REGION

    cd ..
  done

done
