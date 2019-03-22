#!/bin/bash

# api.txt is a list of API urls
for api in `cat apis.txt`
do
    echo "testing $api"
    artillery quick --duration 1000 --rate 10 --num 1 $api &
done
