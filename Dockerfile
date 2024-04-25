# Use an official Node.js runtime as a parent image
FROM node:16

ADD package.json /tmp/package.json
# Set the working directory in the container
RUN npm install && mkdir -p /microservice

WORKDIR /microservice
ADD . /microservice

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run your app using CMD which sets your runtime
CMD ["node", "start"]