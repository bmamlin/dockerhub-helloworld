# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source
COPY app.py .

# Expose port for Flask
EXPOSE 8080

# Run the web server
CMD ["python", "app.py"]