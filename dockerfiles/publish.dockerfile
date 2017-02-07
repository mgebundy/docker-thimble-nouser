FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

RUN git clone https://github.com/mozilla/publish.webmaker.org

WORKDIR publish.webmaker.org

RUN npm install && \
    npm install -g knex

EXPOSE 2016 8001

CMD [ "npm", "run", "knex", "&&", "npm", "start" ]
