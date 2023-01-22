# syntax=docker/dockerfile:1
FROM node:18-alpine

ENV PATH /app/node_modules/.bin:$PATH

ENV NODE_OPTIONS="--openssl-legacy-provider"

WORKDIR /sawatzky-david-ui-garden

COPY package.json ./
COPY package-lock.json ./
COPY . .
RUN npm install
CMD ["npm", "run", "storybook"]
EXPOSE 6006
