# Use the official Tomcat image from Docker Hub
FROM tomcat:11.0.10-jdk21-temurin

# Set a label for the maintainer (optional)
LABEL maintainer="Your Name <youremail@example.com>"

# Remove the default webapps that come with Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the packaged WAR file from your target directory to Tomcat's webapps directory
# The 'hersheys.war' name is based on the <finalName> in the pom.xml
COPY target/hersheys.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 to allow traffic to the Tomcat server
EXPOSE 8080

# The command to run when the container starts
CMD ["catalina.sh", "run"]
