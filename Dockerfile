FROM  node:18
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm install
RUN npm run build --if-present
EXPOSE 3000
CMD ["npm", "start"]