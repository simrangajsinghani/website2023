FROM ubuntu

# Update package list and install Apache
RUN apt-get update && apt-get install apache2 -y

# Add your HTML files to the appropriate directory
ADD ./var/www/html /var/www/html

# Set the entry point to run Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

