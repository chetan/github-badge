#!/bin/sh

set -euf -o pipefail
set -x

DEV_PACKAGES="libffi-dev libjpeg-turbo-dev libressl-dev python2-dev musl-dev zlib-dev"
BUILD_PACKAGES="gcc build-base"
PYTHON_ALPINE="py2-pip python2 python"
# py2-cffi  py2-cryptography py2-openssl

apk --no-cache add ${DEV_PACKAGES} ${BUILD_PACKAGES} ${PYTHON_ALPINE} zlib wget libressl

# Upgrade pip first.
pip install --upgrade pip

# Python dependencies
# pip install -r $(dirname $0)/requirements.txt


# NB: applications of this container must install more Python packages, which can require
# compiled modules, i.e. requiring gcc and friends to be present in the container.
apk del -r ${DEV_PACKAGES} ${BUILD_PACKAGES}
