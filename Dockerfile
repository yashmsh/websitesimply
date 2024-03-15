# Use the official Apache image as the base image
FROM httpd:latest

# Expose port 80 to the outside world
EXPOSE 80

# Set environment variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

# Copy the website files into the container
COPY . /usr/local/apache2/htdocs/

# Set the working directory
WORKDIR /usr/local/apache2/htdocs/

# Define the entry point for the container
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
