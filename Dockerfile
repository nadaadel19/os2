FROM alpine

WORKDIR /os 

COPY index.js .

RUN apk add --update nodejs
RUN apk add --update npm
RUN npm install express

CMD ["node", "index.js"]
