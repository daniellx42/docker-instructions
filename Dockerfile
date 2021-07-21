FROM node:alpine

WORKDIR /usr

COPY package.json yarn.lock ./
RUN yarn

COPY . . 

EXPOSE 3000

CMD ["npm", "start"]