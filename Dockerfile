# Pull base python image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /code

# Install pip requirements.txt
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Copy project folder contents (with the exception of the .Dockerignore file)
copy . /code/