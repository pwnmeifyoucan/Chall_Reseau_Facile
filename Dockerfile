# Sử dụng Apache làm base image
FROM php:8.2-apache

# Cài đặt các extension PHP cần thiết
RUN docker-php-ext-install mysqli

# Cấu hình Apache
COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./php.ini /usr/local/etc/php/conf.d/

# Sao chép mã nguồn vào thư mục web của Apache
COPY . /var/www/html/

# Mở cổng 80
EXPOSE 80

# Khởi động Apache khi container được chạy
CMD ["apache2-foreground"]
