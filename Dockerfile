FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files
COPY . /usr/share/nginx/html/

# Set proper permissions (optional but safe)
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80
