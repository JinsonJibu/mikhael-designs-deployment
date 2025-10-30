# Dockerfile content

FROM python:3.12-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# FIX: Copies the application code from 'app/' on the host directly to '/app/' in the container.
# This ensures the main app.py file is accessible at /app/app.py
COPY app/ /app/ 

EXPOSE 5000

# FIX: Executes the Flask application using the simple, correct path.
CMD ["python", "app.py"]