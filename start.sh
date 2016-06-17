#!/bin/bash

source activate mlhep-2016

if [ -n "$JPY_API_TOKEN" ] ; then
mkdir -p $JPY_WORKDIR
jupyterhub-singleuser \
  --port=8888 \
  --ip=0.0.0.0 \
  --user=$JPY_USER \
  --cookie-name=$JPY_COOKIE_NAME \
  --base-url=$JPY_BASE_URL \
  --hub-prefix=$JPY_HUB_PREFIX \
  --hub-api-url=$JPY_HUB_API_URL \
  --notebook-dir=$JPY_WORKDIR
else
NOTEBOOK_DIR=/notebooks
jupyter notebook --no-browser --ip=0.0.0.0 --notebook-dir=$NOTEBOOK_DIR
fi
