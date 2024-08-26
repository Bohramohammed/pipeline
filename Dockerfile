# Use the official Ubuntu image as the base image
FROM ubuntu:20.04

# Update the package list and install Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

COPY ./* /var/www/html/

# Expose port 80 to allow web traffic
EXPOSE 80

# Start the Apache2 server in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
