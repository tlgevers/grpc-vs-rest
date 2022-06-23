# gcloud auth configure-docker
docker build -t=gcr.io/tgevers-apps/grpc-greeter-server:latest .
docker push gcr.io/tgevers-apps/grpc-example:latest
gcloud run deploy grpc-greeter-server \
--image=gcr.io/tgevers-apps/grpc-greeter-server:latest \
--platform=managed \
--allow-unauthenticated \
--project=tgevers-apps \
--region=us-central1
