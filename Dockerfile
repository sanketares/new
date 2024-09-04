# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the HTML file into the container
COPY index.html /app

# Expose port 8000 to the outside world
EXPOSE 8000

# Run a simple HTTP server to serve the HTML file
CMD ["python", "-m", "http.server", "8000"]
