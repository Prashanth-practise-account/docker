# Use official Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy dependencies file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app source code to container
COPY app.py .

# Expose port 5000 (Flask default)
EXPOSE 5000

# Command to run app
CMD ["python", "app.py"]
