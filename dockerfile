# Use the official Node.js image.
FROM node:18

# Set the working directory.
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of your application files.
COPY . .

# Build your application (if applicable).
RUN npm run build

# Expose the port your app runs on (change as necessary).
EXPOSE 3000

# Command to run your application.
CMD ["node", "server.js"]
