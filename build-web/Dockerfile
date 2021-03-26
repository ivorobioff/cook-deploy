FROM node:10.9.0-alpine

COPY ./tmp/ /src/

WORKDIR /src/cook-web

RUN npm install
RUN npm run build

CMD ["npm", "run", "serve"]