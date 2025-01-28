# Use a more specific Node.js base image with Alpine Linux
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package files first to leverage Docker layer caching
COPY package*.json ./

# Install production dependencies only
RUN npm ci --only=production

# Copy the rest of the application
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Use a non-root user for security
USER node

# Command to run the application
CMD ["npm", "start"]