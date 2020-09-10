
PROJECT=chetan/github-badge-gae

all: build


build:
	docker build -f docker/Dockerfile --pull -t ${PROJECT}:latest .

push-latest:
	docker build -t ${PROJECT}:latest .
	docker push ${PROJECT}:latest
