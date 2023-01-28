FROM node:14

WORKDIR /app

COPY ./package.json /app

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

# ENV PORT 80

EXPOSE $PORT 

# EXPOSE 80 

# CMD [ "node", "server.js" ]

CMD ["npm", "start"]