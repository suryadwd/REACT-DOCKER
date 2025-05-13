#took the base image first 
FROM node:23-alpine

# Set the working directory for container
WORKDIR /app

#Copy the dependencies first from host to container
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code from the host to the container
COPY . .

# Comand to run the container
CMD ["npm", "run", "dev"]
