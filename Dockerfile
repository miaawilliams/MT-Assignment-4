# Choosing a base image
FROM node:16

# Setting work directory inside container, all commands will be run from this directory
WORKDIR /app

# Copies file from local machine to the container 
COPY package.json .

# Execute commands during build
RUN npm install

# Copy application code  
COPY . . 

# Documents which port the application uses
EXPOSE 3000

# Specifies the default command  
CMD ["npm", "start"]