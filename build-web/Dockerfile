FROM node:16.13.2-alpine

COPY ./tmp/ /src/

WORKDIR /src/cook-web

RUN npm install
RUN npm run build

CMD ["npm", "run", "serve"]