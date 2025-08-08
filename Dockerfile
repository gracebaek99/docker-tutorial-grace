# Use an official Python base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy project files to the container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose the port Flask will run on
EXPOSE 5000

# Run the application
CMD ["python", "grace_app.py"]
