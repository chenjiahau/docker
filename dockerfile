FROM node:16-bullseye
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
VOLUME [ "/app/logs", "/app/node_modules" ]
CMD ["npm", "start"]