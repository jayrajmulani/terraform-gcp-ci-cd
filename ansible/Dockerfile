FROM python:3-alpine

RUN apk add --update --no-cache ansible bash openssh

WORKDIR /home/mresham

COPY ./coffee-project ./coffee-project
COPY ./docker ./docker
COPY ./ansible ./ansible

ENTRYPOINT []
CMD ["/bin/bash"]