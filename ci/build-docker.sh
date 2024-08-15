#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
cd frontend
docker build -t "${REPO}frontend-app:latest" -t "${REPO}frontend-app:1.0-$Tag" .
cd ../backend
docker build -t "${REPO}backend-app:latest" -t "${REPO}backend-app:1.0-$Tag" .