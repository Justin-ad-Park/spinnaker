gcloud beta container --project "justin-kuber" \
  clusters create "justin-kuber" --zone "asia-northeast1-a" \
  --no-enable-basic-auth --cluster-version "1.13.11-gke.9" \
  --machine-type "n1-standard-1" --image-type "COS" \
  --disk-type "pd-standard" --disk-size "100" \
  --metadata disable-legacy-endpoints=true \
  --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write" \
  ,"https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol",\
  "https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" \
  --num-nodes "3" --enable-cloud-logging --enable-cloud-monitoring \
  --enable-ip-alias \
  --network "projects/justin-kuber/global/networks/default" \
  --subnetwork "projects/justin-kuber/regions/asia-northeast1/subnetworks/default" \
  --default-max-pods-per-node "110" \
  --addons HorizontalPodAutoscaling,HttpLoadBalancing \
  --enable-autoupgrade --enable-autorepair --no-shielded-integrity-monitoring

