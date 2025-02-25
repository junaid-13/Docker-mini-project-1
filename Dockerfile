# Use an updated Alpine version with Python 3
FROM python:3.8-alpine

# Install dependencies and update CA certificates
RUN apk add --no-cache python3 py3-pip ca-certificates && \
    update-ca-certificates && \
    pip3 install --upgrade pip setuptools wheel

# Set working directory
WORKDIR /usr/src/app

# Copy requirements file first (for better caching)
COPY requirements.txt /usr/src/app/requirements.txt

# Install Python dependencies
RUN pip3 install --no-cache-dir -r /usr/src/app/requirements.txt

# Copy the application files
COPY . /usr/src/app
COPY templates/index.html /usr/src/app/templates/index.html

# Expose the port
EXPOSE 5000

# Run the Flask application
CMD ["python3", "/usr/src/app/app.py"]
