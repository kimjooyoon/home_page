# Use the base image for Flutter to build the web application
FROM instrumentisto/flutter:3.22 AS build

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Ensure the Flutter dependencies are up-to-date
RUN flutter pub get

# Build the Flutter web application
RUN flutter build web

# Use the official Nginx image to serve the Flutter web application
FROM nginx:alpine

# Copy the built web application from the build stage to the Nginx html directory
COPY --from=build /app/build/web /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy SSL certificates
COPY stargaser_ssl/certificate.crt /etc/ssl/certificate.crt
COPY stargaser_ssl/private.key /etc/ssl/private.key

# Expose port 80 to the outside world
EXPOSE 80 443

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]