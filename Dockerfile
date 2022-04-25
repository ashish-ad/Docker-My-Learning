FROM node:13-alpine
#the above line shows that our application will be require a docker image tagged 13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password
#these are the env variables that is need to be given to the container when created from the image.

RUN mkdir -p /home/app
#this 'RUN' keyword is used to run the commands when the container is started. 

COPY ./app /home/app 
#the above command copy takes two argument one is a source and a destination directory.

CMD ["node" , "home/app/server.js"]
#this command will make start the application whereever the application is present that is the path is need to be mentioned thus it will start the application as soon as the docker run command is used for the image created from this docker file for the own developed application.