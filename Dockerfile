# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app (assuming your app uses 'npm run build' to create a production build)
RUN npm run build

# Expose the port that your React app listens on (typically 3000)
EXPOSE 3000

# Start the React app in production mode
CMD ["npm", "start"]
