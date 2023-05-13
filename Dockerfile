# Use a base image with Node.js pre-installed
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the source code to the working directory
COPY . .

# Run the Pug and Sass compilation commands
RUN npm run compile-pug
RUN npm run compile-sass

# Set the command to start the server or serve the compiled files
CMD [ "npm", "start" ]
