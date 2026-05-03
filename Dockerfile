# Use Nginx to serve the HTML file
FROM nginx:alpine

# Copy your index.html into the web server's folder
COPY index.html /usr/share/nginx/html/index.html
