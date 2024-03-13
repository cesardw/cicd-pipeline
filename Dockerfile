FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
 #RUN npm ci --omit=dev

#Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]




##NO ENTENDI ESTA PARTE##
#FROM docker:stable

#LABEL 'name'='Docker Deployment Action'
#LABEL 'maintainer'='cicd-pipeline<cesards91@gmail.com>'

#LABEL 'com.github.actions.name'='Docker Deployment'
#LABEL 'com.github.actions.description'='supports docker-compose and Docker Swarm deployments'
#LABEL 'com.github.actions.icon'='send'
#LABEL 'com.github.actions.color'='green'

#RUN apk --no-cache add openssh-client docker-compose

#COPY docker-entrypoint.sh /docker-entrypoint.sh

#ENTRYPOINT ["/docker-entrypoint.sh"]