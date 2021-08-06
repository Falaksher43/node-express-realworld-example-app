FROM node:12
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
RUN npm audit fix
COPY . /app
CMD ["npm", "run", "dev"]
