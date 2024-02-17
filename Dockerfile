# Use a lightweight web server image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the local files to the container's filesystem
COPY . .
