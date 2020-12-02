# clone node's docker image
FROM node:12-alpine AS app-base

# set working dir
WORKDIR /app
# copy files from local folder to docker image
COPY . .
# No need to run "npm install" if copied from local copy
#RUN npm install

# set port
EXPOSE 35953

# run npm
CMD ["/bin/sh" , "-c" , "cd /app && npm start"]