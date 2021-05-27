FROM node:12-alpine3.9

RUN  mkdir -m 755 /home/node/application
COPY ./application /home/node/application

WORKDIR /home/node/application
RUN rm -rf node_modules
RUN yarn install

RUN adduser -D user_1
USER user_1

CMD yarn run start
