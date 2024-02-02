# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.8-slim

# Working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt ./

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Streamlit runs on port 8501 by default, expose it
EXPOSE 8501

# Command to run on container start
CMD ["streamlit", "run", "app.py"]
