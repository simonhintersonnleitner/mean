FROM mhart/alpine-iojs:latest

RUN mkdir -p /app
WORKDIR /app

COPY ./dist /app
RUN npm install --production

ENV NODE_ENV production

EXPOSE 3000

CMD ["node", "server.js"]
