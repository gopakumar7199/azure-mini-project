# 1️⃣ Base image
FROM node:20-alpine

# 2️⃣ Working directory
WORKDIR /app

# 3️⃣ Copy only package files first
COPY app/package*.json ./

# 4️⃣ Install production dependencies
RUN npm ci --omit=dev

# 5️⃣ Copy the rest of the source code
COPY app/ ./

# 6️⃣ Azure sets the PORT env variable, so expose it
EXPOSE 8080

# 7️⃣ Start the app
CMD ["npm", "start"]
