# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy website files into the container
COPY . /usr/share/nginx/html

# Optionally, copy custom NGINX configuration
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
