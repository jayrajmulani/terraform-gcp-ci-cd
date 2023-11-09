FROM node:18-alpine

WORKDIR /home/coffee-project/
COPY ./coffee-project .
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]