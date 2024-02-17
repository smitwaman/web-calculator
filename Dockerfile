# Use a base image with Node.js and Nginx
# Stage 1: Build the application
FROM node:14 AS builder
WORKDIR /app
COPY /app/package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve the application with Nginx
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
