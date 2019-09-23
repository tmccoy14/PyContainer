# Base Docker image we want to use for the container
FROM alpine:3.1
FROM python:3

# Install dependencies that have been defined in requirements.txt
RUN pip install --upgrade pip
RUN pip install flask

# Bundle app source
COPY app.py ./app.py

# Expose port 8000 and run the application
EXPOSE 8000
CMD ["python", "./app.py"]