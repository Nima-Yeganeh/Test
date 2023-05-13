# Use official NGINX image as base
FROM nginx:latest

# Copy custom index.html file to container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for NGINX
EXPOSE 80

# Start NGINX when the container is launched
CMD ["nginx", "-g", "daemon off;"]

