# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available) files into the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your project files into the working directory
COPY . .

# Your app binds to port 3000 by default, expose this port
EXPOSE 3000

# Command to run your app
CMD ["node", "app.js"]