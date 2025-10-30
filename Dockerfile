# Corrected Dockerfile Content

FROM python:3.12-slim

# Set the primary working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# CRITICAL FIX: Copy the application code directly into the working directory (/app)
# This places app/app.py directly at /app/app.py inside the container.
COPY app/ /app/ 

# Expose the port
EXPOSE 5000

# CRITICAL FIX: Run the Flask app using the simple, correct path
# The file is now correctly located at /app/app.py
CMD ["python", "app.py"]