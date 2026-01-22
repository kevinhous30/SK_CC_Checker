# Sử dụng PHP 8.2 với Apache (đã cài sẵn server web)
FROM php:8.2-apache

# Copy toàn bộ code của bạn vào thư mục web của server
COPY . /var/www/html/

# Cấp quyền cho Apache đọc/ghi file (nếu cần upload ảnh/file)
RUN chown -R www-data:www-data /var/www/html

# Mở cổng 80 để Render kết nối
EXPOSE 80
