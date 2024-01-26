# Dockerfile for HTML application
FROM python:3.9-slim

# Set working directory
WORKDIR /usr/src/app

# Copy HTML, CSS, and JS files into the container
COPY index.html .
COPY style.css .


# Expose port 80 for HTTP server
EXPOSE 80

# Run a simple HTTP server using Python
CMD ["python", "-m", "http.server", "80"]
