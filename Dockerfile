# استخدم Flutter 3.7 أو أحدث
FROM ghcr.io/cirruslabs/flutter:3.7.12 AS build

WORKDIR /app

# انسخ ملفات المشروع
COPY . .

# جلب الحزم
RUN flutter pub get

# بناء نسخة الويب
RUN flutter build web

# المرحلة الثانية: تشغيل التطبيق عبر Nginx
FROM nginx:stable-alpine
COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]