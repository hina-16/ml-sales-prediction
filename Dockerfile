# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Copy the requirements file
#COPY requirements.txt .

#Install Dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Install necessary Python packages
RUN pip install fastapi uvicorn joblib pandas

# Expose the port the app will run on
EXPOSE 8080

# Command to run the FastAPI app
#CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
CMD ["python", "app.py"]



