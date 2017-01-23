FROM alpine:3.4

RUN apk update

RUN apk add openssh 
RUN apk add git 
RUN apk add python py-pip; pip install --upgrade pip
RUN pip install awscli
RUN apk add vim 

ENTRYPOINT ["/bin/ash"]
