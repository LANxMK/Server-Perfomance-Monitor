#Deriving the latest base image
FROM python:latest


#Labels as key value pair
LABEL Maintainer="dexythepuppy"

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /home/perfmon

#to COPY the remote file at working directory in container
COPY perfmon.py ./

EXPOSE 8082
#CMD instruction should be used to run the software
#contained by your image, along with any arguments.
CMD [ "python", "./perfmon.py"]
