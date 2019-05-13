# gcp-cloudbuild-vscode
Dockerfile and GCP Cloudbuild buildspec for building VSCode from source

This will create the container spec'd by Dockerfile and upload it to your GCP Project's Container Registry.
It then uses the container to build VSCode from source

Example command to kick-off the build, overriding the repo to pull the VSCode source from:

gcloud builds submit --config cloudbuild.yaml --timeout="20m" --substitutions=_VS_CODE_REPO="<git repo RUL>"
