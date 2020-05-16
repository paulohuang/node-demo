FROM node:8

WORKDIR /usr/src/app

COPY . .

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
RUN apt install -y nodejs
RUN npm install

CMD [ "npm", "start" ]