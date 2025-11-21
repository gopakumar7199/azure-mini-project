# Use a lightweight Node.js image
FROM node:20-alpine

# Set app directory
WORKDIR /app

# Install dependencies
COPY app/package*.json ./
RUN npm ci --omit=dev

# Copy app source
COPY app/ ./

# Expose port (any value is fine; Azure ignores this)
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
