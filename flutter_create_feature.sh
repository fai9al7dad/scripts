#!/bin/bash
# ask user for feature name
# if lib/features does not exist create it, else continue
# create a directory inside lib/features/ with the feature name
# inside the feature directory create subdirectories for data, domain, presentation
# inside the data directory create subdirectories for models, repositories, datasources
# inside the domain directory create subdirectories for entities, usecases


# take first argument as feature name 
feature_name=$1

# if did not pass argument, ask for feature name
if [ -z "$feature_name" ]
then
    echo "Please enter feature name"
    read feature_name
fi



# if lib/features does not exist create it, else continue
if [ ! -d "lib/features" ]; then
    mkdir lib/features
fi 

# if future name already exists then show error and exit
if [ -d "lib/features/$feature_name" ]; then
    echo "Feature name already exists"
    exit 1
fi
# create a directory inside lib/features/ with the feature name
mkdir lib/features/$feature_name

# inside the feature directory create subdirectories for data, domain, presentation
mkdir lib/features/$feature_name/data
mkdir lib/features/$feature_name/domain
mkdir lib/features/$feature_name/presentation

# inside the data directory create subdirectories for models, repositories, datasources
mkdir lib/features/$feature_name/data/repositories
mkdir lib/features/$feature_name/data/datasources

# inside the domain directory create subdirectories for entities, usecases
mkdir lib/features/$feature_name/domain/entities
mkdir lib/features/$feature_name/domain/usecases


# print success message if no errors

echo "Feature $feature_name created successfully"
