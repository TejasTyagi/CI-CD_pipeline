# Use official Node.js image
FROM node:16

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# App listens on port 3000
EXPOSE 3000

# Command to start the app
CMD ["node", "server.js"]
