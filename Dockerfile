# 1️⃣ Use a lightweight Node.js base image
FROM node:20-alpine

# 2️⃣ Set the working directory inside the container
WORKDIR /app

# 3️⃣ Copy package files and install dependencies
COPY app/package*.json ./
RUN npm ci --omit=dev

# 4️⃣ Copy application source code
COPY app/ ./

# 5️⃣ Expose the app’s port
EXPOSE 3000

# 6️⃣ Start the app
CMD ["npm", "start"]
