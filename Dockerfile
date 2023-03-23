FROM node:18.15
RUN mkdir -p /usr/src/nextjs-app
WORKDIR /usr/src/nextjs-app
COPY . .
RUN npm i
RUN npm cache clean --force
RUN npm run build

EXPOSE 3000 

CMD ["npm", "run", "start"]