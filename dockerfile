FROM node:latest

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV APP_PORT=8080
ENV MYSQL_IP=172.17.0.2
EXPOSE 8080
CMD ["npm", "start"]
