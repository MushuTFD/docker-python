#Using latest base image from DockerHub
FROM python:latest

#Creating work Directory
WORKDIR /app

#Copy source code into working directory
COPY . /app

#Install flas inside container
RUN pip install -r requirements.txt

#Expose container port
EXPOSE 8080

#Start flask app
ENTRYPOINT ["python"]
CMD ["app.py"]