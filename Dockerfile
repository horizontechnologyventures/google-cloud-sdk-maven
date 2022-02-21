FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine
RUN apk --update add openjdk11
RUN apk --update add maven
RUN apk --update add docker
RUN apk add --update docker openrc
RUN rc-update add docker boot
RUN curl -fsSL "https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v2.0.4/docker-credential-gcr_linux_amd64-2.0.4.tar.gz" \
| tar xz --to-stdout ./docker-credential-gcr \
> /usr/bin/docker-credential-gcr && chmod +x /usr/bin/docker-credential-gcr
