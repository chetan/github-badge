FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine

ENV GITHUB_USER ""
ENV GITHUB_PASS ""

COPY docker/scripts/*.sh /opt/
# not needed
# COPY requirements.txt /opt/
RUN ln -s /opt/env_secure.sh /usr/local/bin/ && chmod +x /opt/env_secure.sh

# Dependencies for Google AppEngine Python
RUN sh /opt/setup_alpine.sh

# Install Google Cloud SDK
RUN sh /opt/setup_appengine.sh /opt/google-cloud-sdk

COPY . /opt/app
COPY docker/dockerconfig.py /opt/app/app/config/development.py

EXPOSE 8080

WORKDIR /opt/app

ENTRYPOINT ["/opt/app/docker/run.sh"]
