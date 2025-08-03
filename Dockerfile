
FROM php:7.4-apache

# Enable Apache's mod_rewrite for clean URLs
RUN a2enmod rewrite

# Copy the application files to the web server's root directory
COPY . /var/www/html/

# Set the correct permissions for the web server to write to the files
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html
