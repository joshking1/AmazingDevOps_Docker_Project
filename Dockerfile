#Deriving the latest base image
FROM jenkins/jenkins:lts-alpine


#Labels as key value pair
LABEL Maintainer="AmazingDevOps"


# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /

#to COPY the remote file at working directory in container
COPY src/html /etc/sysconfig/jenkins
# Now the structure looks like this '/usr/app/src/test.py'

RUN chmod +x src/html/jenkins_server.sh


#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD ["./jenkins_server.sh"]
