# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any needed packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the necessary ports
EXPOSE 8000 5005

# Run the application
CMD ["uvicorn", "your_app_module:app", "--host", "0.0.0.0", "--port", "8000"]
