#!/bin/bash

# ask user for app name
# if null go to cd ../../mnt/d/apps 
# if not null go to cd ../../mnt/d/apps/$name

# take first argument as app name
app_name=$1

# if did not pass argument, ask for app name
if [ -z "$app_name" ]
then
    echo "Please enter app name"
    read app_name
fi


if [ -z "$app_name" ]; then
    cd ../../../mnt/d/apps
else
    cd ../../../mnt/d/apps/$app_name
fi

