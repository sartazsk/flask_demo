FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ ./app/

# Expose port
EXPOSE 5000

# Run Flask app
CMD ["flask", "--app", "app.app", "run", "--host=0.0.0.0", "--port=5000"]