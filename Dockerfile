# Base Docker image we want to use for the container
FROM alpine:3.1

# Add Python to our Docker image
RUN apk add

# Install dependencies that have been defined in requirements.txt
RUN pip install -r requirements.txt

# Bundle app source
COPY app.py ./app.py

# Expose port 8000 and run the application
EXPOSE 8000
CMD ["python", "./app.py"]