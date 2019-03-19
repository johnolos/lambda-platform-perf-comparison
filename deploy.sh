#!/bin/bash
declare -a folders=("csharp2""fsharp2" "go" "java" "python" "python3" "nodejs6", "nodejs8", "rust")

export AWS_PROFILE=default
export AWS_REGION=eu-west-1

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
