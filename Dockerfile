# Use an official Node.js runtime as a parent image
FROM node:14

RUN apt-get update \
    && apt-get install -y nodejs npm
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in package.json
RUN npm install

# Run the command to start the Node.js server
CMD ["node","get-dealership.js"]
