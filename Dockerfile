FROM node:latest as node

RUN apk add --no-cache bash
WORKDIR /app
COPY worker/*.jar ./Worker.jar
RUN npm install 


COPY . /app/
EXPOSE 8081
CMD ["npm", "run", "start"]
