# Use the official nginx image as base
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the static website files into the container
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Configure nginx to handle single-page applications (optional but recommended)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]