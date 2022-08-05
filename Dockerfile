# Use base image for NodeJS
FROM node:16-alpine

# Copy application code.
COPY . /app/

# Change the working directory
WORKDIR /app

# Install dependencies.
RUN npm install --location=global npm && npm ci

# Start the Express app
CMD ["node", "server.js"]
