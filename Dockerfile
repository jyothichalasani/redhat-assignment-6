FROM node:14

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .

RUN ls -l
RUN chmod -R 777 public

EXPOSE 8080

CMD [ "npm", "start" ]