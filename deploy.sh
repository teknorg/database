GOOGLE_PROJECT_ID=tekna-api

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/tekna-api \
  --project=$GOOGLE_PROJECT_ID

gcloud beta run deploy tekna-api \
  --image gcr.io/$GOOGLE_PROJECT_ID/tekna-api \
  --platform managed \
  --region australia-southeast1 \
  --allow-unauthenticated \
  --project=$GOOGLE_PROJECT_ID