#!/usr/bin/bash

PROJECT_NAME=project_name # change this to your project name

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR=${SCRIPT_DIR}/..
PASSWORD=$1

echo $PASSWORD | sudo chmod +x $SCRIPT_DIR/compare_and_cp.py
$SCRIPT_DIR/compare_and_cp.py $PROJECT_DIR/src/$PROJECT_NAME/config/settings.yaml $PROJECT_DIR/install/$PROJECT_NAME/share/$PROJECT_NAME/config/settings.yaml
$SCRIPT_DIR/compare_and_cp.py $PROJECT_DIR/src/$PROJECT_NAME/config/profiles/normal.yaml $PROJECT_DIR/install/$PROJECT_NAME/share/$PROJECT_NAME/config/profiles/normal.yaml
