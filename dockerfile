FROM node:current-alpine

#Create the app directory
WORKDIR /app

#Install app dependencies
COPY package*.json ./

#Run npm install
RUN npm install

#Bundle app
COPY . .

EXPOSE 3000

CMD ["npm","start"]