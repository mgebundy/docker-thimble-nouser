FROM node:7.4.0
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

RUN git clone https://github.com/mgebundy/thimble.mozilla.org

WORKDIR thimble.mozilla.org

RUN cp env.dist .env

RUN npm install && npm run localize

EXPOSE 3500

CMD ['npm', 'start']
