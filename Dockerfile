FROM node:22-alpine3.19

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . . 

EXPOSE 3000

RUN npx prisma generate

CMD ["npm", "run", "dev"]