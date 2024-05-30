# Use the base image for Flutter
FROM cirrusci/flutter:stable

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Ensure the Flutter dependencies are up-to-date
RUN flutter pub get

# Build the Flutter web application
RUN flutter build web

# The build output will be available at /app/build/web
