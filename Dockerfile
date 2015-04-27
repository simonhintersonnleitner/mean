FROM iojs:latest

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
COPY ./app /app
RUN npm install --production

ENV NODE_ENV production

EXPOSE 3000

CMD ["node", "app/server.js"]
