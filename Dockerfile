
FROM node:18.20.3-alpine3.20


WORKDIR /usr/src/app


COPY package*.json ./


RUN npm install --only=production


COPY . .


RUN npm run build



EXPOSE 3000

