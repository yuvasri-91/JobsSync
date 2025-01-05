# Use the official Tomcat image with OpenJDK
FROM tomcat:9.0-jdk17-openjdk-slim

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file from the target directory to the Tomcat webapps directory
COPY target/Mock.war /usr/local/tomcat/webapps/

# Expose the port that Tomcat uses (usually 8080)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
