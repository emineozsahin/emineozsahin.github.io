FROM nginx:alpine
LABEL authors="Emine Ozsahin"

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the static content from your local public_html folder to the container
COPY . /usr/share/nginx/html

# Expose port 80 to the outside once the container has launched
EXPOSE 80

# The command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]