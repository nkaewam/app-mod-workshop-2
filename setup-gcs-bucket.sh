#!/bin/bash

set -euo pipefail

export PROJECT_ID=$GOOGLE_CLOUD_PROJECT
export BUCKET=nkaewam-gg-app-mod-workshop-bucket
export GCP_REGION=asia-southeast1

# Your Cloud Run Service Name, eg php-amarcord-dev
SERVICE_NAME='php-amarcord-dev'
BUCKET="${PROJECT_ID}-public-images"
GS_BUCKET="gs://${BUCKET}"

# Create bucket
gsutil mb -l "$GCP_REGION" -p "$PROJECT_ID" "$GS_BUCKET/"

# Copy original pictures there - better if you add an image of YOURS before.
gsutil cp ./uploads/*.png "$GS_BUCKET/"