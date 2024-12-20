# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

COPY package-lock.json ./

# Install the app dependencies
RUN npm install

RUN npm build

# Copy the rest of the application code to the container
COPY . .

# Command to run the application
CMD ["npm", "start"]
