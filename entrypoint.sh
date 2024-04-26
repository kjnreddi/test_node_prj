#!/bin/bash

# Copy all files from /microservice to /microservice2
cp -a /microservice/* /microservice2/

# Execute the CMD
exec "$@"