FROM node:12

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]



FROM mysql

ENV MYSQL_DATABASE movies

COPY moviessql/*.sql /docker-entrypoint-initdb.d/