FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

RUN git clone https://github.com/mozilla/id.webmaker.org

WORKDIR id.webmaker.org

RUN npm install

EXPOSE 1234

CMD [ "npm", "start" ]
