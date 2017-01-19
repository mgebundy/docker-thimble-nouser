FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

ENV NODE_ENV production

RUN git clone https://github.com/mozilla/publish.webmaker.org

WORKDIR publish.webmaker.org

RUN npm install && \
    npm run env && \
    npm install -g knex \
    npm run knex

EXPOSE 2016 8001

CMD ['npm', 'start']
