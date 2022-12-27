FROM node:16-alpine

# Install curl
RUN apk add --no-cache curl

# Create app directory
WORKDIR /server

COPY ["package.json", "package-lock.json*", "/"]

RUN npm install

COPY . .

CMD [ "npm", "start" ]