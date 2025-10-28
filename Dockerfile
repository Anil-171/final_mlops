# Use lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your source code
COPY . .

# Expose port (for Flask)
EXPOSE 5000

# Run app
CMD ["python", "application.py"]
