FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

RUN git clone --recursive https://github.com/mozilla/brackets

WORKDIR brackets

RUN npm install && npm run build

EXPOSE 8000

CMD [ "npm", "start" ]
