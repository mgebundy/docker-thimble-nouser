FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

RUN git clone https://github.com/mozilla/login.webmaker.org

WORKDIR login.webmaker.org

COPY ./envfiles/login.env .env

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
