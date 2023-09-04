# Use an official PHP 7.4 image as the base image
FROM php:7.4-fpm

# Install additional PHP extensions using Docker's built-in package manager
RUN docker-php-ext-install pdo_mysql mysqli

# Optionally, install other extensions as needed, e.g., for popular plugins
# RUN docker-php-ext-install <extension-name>

# Set the working directory in the container
WORKDIR /var/www/html

# Expose the port that PHP-FPM listens on (usually 9000)
EXPOSE 9000

# Start the PHP-FPM server
CMD ["php-fpm"]
