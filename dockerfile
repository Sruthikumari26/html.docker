FROM nginx:alpine

# Remove nginx's default welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML into nginx's web root
COPY index.html /usr/share/nginx/html/index.html

# nginx listens on port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
