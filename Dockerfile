FROM node:16

ENV WORK_DIR /srv/app

WORKDIR $WORK_DIR

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1338

CMD ["npm", "start"]
