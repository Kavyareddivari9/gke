# Use an official Python runtime as a base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy your application code into the container
COPY gke/source/app /app

# Install any dependencies (if needed)
RUN pip install -r requirements.txt

# Specify the command to run when the container starts
CMD ["python", "app.py"]
