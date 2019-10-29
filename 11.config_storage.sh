echo "Create GCS(Google Cloud Storage) for Spinnaker storage"
PROJECT=$(gcloud info --format='value(config.project)')
BUCKET_LOCATION=asia
SERVICE_ACCOUNT_DEST=$HOME/.ssh/GCP/justin-kuber.json

hal config storage gcs edit --project $PROJECT \
    --bucket-location $BUCKET_LOCATION \
    --json-path $SERVICE_ACCOUNT_DEST

