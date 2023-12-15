FROM php:8.2-apache

# Установка расширений PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Включение mod_rewrite для Apache
RUN a2enmod rewrite

# Установка ServerName для Apache, чтобы избежать предупреждений
RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

# Копирование исходного кода в контейнер
COPY . /var/www/html/

# Открытие порта 80
EXPOSE 80