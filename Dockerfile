# # Use the official Python image
# FROM python:3.9-slim

# # Set the working directory
# WORKDIR /app

# # Copy the current directory contents into the container
# COPY . /app

# # Install the dependencies
# RUN pip install fastapi uvicorn

# # Expose the port the app runs on
# EXPOSE 8000

# # Command to run the application
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

# Use the official Node.js image.
FROM node:14

# Set the working directory.
WORKDIR /app

# Copy package.json and package-lock.json (if available).
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Expose the port the app runs on.
EXPOSE 8080

# Start the application.
CMD ["npm", "start"]
