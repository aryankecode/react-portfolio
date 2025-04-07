# Use the official Node.js image as the base image for building the app
FROM node:16 as build

# Set the working directory for the app
WORKDIR /app

# Copy the package.json and package-lock.json files to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Build the React app for production
RUN npm run build

# Install serve to serve the production build
RUN npm install -g serve

# Expose port 5575 for serving the app
EXPOSE 5575

# Command to run the app in production using serve
CMD ["serve", "-s", "build", "-l", "5575"]
