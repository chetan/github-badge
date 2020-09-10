#!/bin/sh

# A handy shortcut for selectively enabling them :)
gcloud_components () {
  # echo bq
  # echo kubectl
  # echo gsutil
  # echo docker-credential-gcr
  echo app-engine-python
  echo app-engine-python-extras
  # echo cloud-datastore-emulator
}


# Install the desired components
echo Y | gcloud components install $(gcloud_components)


rm -rf /opt/google-cloud-sdk/.install/.backup
