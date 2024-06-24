# Use the official Node.js image that includes Yarn
FROM node:14-slim

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of your application code
COPY . .

# Start the application
CMD ["node", "index.js"]
