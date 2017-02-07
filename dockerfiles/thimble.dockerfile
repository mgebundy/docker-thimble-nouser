FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

RUN git clone https://github.com/mozilla/thimble.mozilla.org --recursive

WORKDIR thimble.mozilla.org

COPY ./envfiles/thimble.env .env

RUN npm install

EXPOSE 3500

CMD [ "npm", "start" ]
