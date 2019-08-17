FROM node:8.12.0-alpine

ENV APP /opt/devops-interview
COPY . $APP/

WORKDIR $APP

RUN apk add --update python3 python3-dev alpine-sdk
RUN pip3 install -r requirements.txt 
RUN npm install 

CMD $APP/bin/www


