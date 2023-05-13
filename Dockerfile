From python:3.10.9

# WORKDIR /app

# COPY requirements.txt requirements.txt

# RUN pip3 install -r requirements.txt

# COPY . .

# EXPOSE 8000

# CMD python manage.py runserver

# Choose an official Python runtime as a parent image
#FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 8000

# Start your Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
