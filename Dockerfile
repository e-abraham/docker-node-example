# syntax=docker/dockerfile:1

# Built off of base image
FROM node:14.17.1

# Creates folder for app inside image
RUN mkdir /app

# Sets working directory, commands run from here, destination paths relative to here
WORKDIR /app

# Copy files to app folder
COPY . /app

# Install app dependencies
RUN npm install

# Bundle app source code inside image
COPY . .

# Document container port
EXPOSE 3000

# Start app when container starts
CMD ["node", "app.js"]