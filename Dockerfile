# Dockerfile content

# Use an official lightweight Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container and install dependencies
# We use COPY --chown to set ownership for security best practices
COPY --chown=root:root requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code (app.py, templates, static) into the container
# Use the correct subdirectory path
COPY app/ /app/app

# Set environment variable (optional but good practice for Flask)
ENV FLASK_APP=app/app.py

# Expose the port the app runs on
EXPOSE 5000

# Run the Flask app when the container starts
# The command runs the Python file directly from the correct path
CMD ["python", "app/app.py"]