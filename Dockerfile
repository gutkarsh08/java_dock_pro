#Get the base image with jdk install
FROM openjdk:8

#Create a working directory to compile, run java app
WORKDIR /app

#copy the code from local machine to docker container
COPY HelloWorld.java .

#Compile the code 
RUN javac HelloWorld.java

# Run the java app
CMD ["java","HelloWorld"]

