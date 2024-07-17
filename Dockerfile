FROM --platform=linux/arm64 node:14-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . . 

EXPOSE 3000

RUN npx prisma generate --schema=./src/prisma/schema.prisma

CMD ["npm", "run", "dev"]