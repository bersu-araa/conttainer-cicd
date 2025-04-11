FROM php:8.2-apache

# Copy semua file ke dalam folder web server
COPY . /var/www/html/

# Aktifkan module rewrite
RUN a2enmod rewrite

# Expose port 80 untuk web access
EXPOSE 80
