# Use the official httpd (Apache) image as the base image
FROM httpd:2.4

LABEL maintainer="your-email@example.com"

# Copy your website's files into the Apache document root
COPY ./* /usr/local/apache2/htdocs/

# Expose port 80 to allow web traffic
EXPOSE 80

# No need for CMD since it's already defined in the httpd image
