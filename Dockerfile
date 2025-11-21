# Base image
FROM node:20-alpine
 
# Working directory
WORKDIR /app
 
# Copy package files first
COPY app/package*.json ./
 
# Install production dependencies
RUN npm ci --omit=dev
 
# Copy the rest of the source code
COPY app/ ./
 
# Set environment variables
ENV NODE_ENV=production
ENV PORT=8080
ENV APP_ENV=production
 
# Expose port
EXPOSE 8080
 
# Start the app directly with Node (better than npm)
CMD ["node", "src/server.js"]
