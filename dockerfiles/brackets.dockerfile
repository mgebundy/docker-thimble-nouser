FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

ENV NODE_ENV production

RUN git clone https://github.com/mozilla/brackets --recursive

WORKDIR brackets

RUN npm install && npm run build

EXPOSE 8000

CMD ['npm', 'start']
