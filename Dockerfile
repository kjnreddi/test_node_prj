# Use an official Node.js runtime as a parent image
FROM node:16

ADD package.json /tmp/package.json
# Set the working directory in the container
RUN --mount=type=secret,id=npm-token,target=/root/.npmrc
RUN cd /tmp && npm install && mkdir -p /microservice && cp -a /tmp/node_modules /microservice

WORKDIR /microservice
ADD . /microservice

RUN ls

RUN chmod +x /microservice/entrypoint.sh
ENTRYPOINT ["/microservice/entrypoint.sh"]

# Define the command to run your app using CMD which sets your runtime
CMD ["node", "app.js"]
