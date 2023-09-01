FROM python:3.x

# Install LibreOffice (adjust the commands based on the distribution)
RUN apt-get update && apt-get install -y libreoffice

# Set working directory
WORKDIR /app

# Copy your application files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Command to run your application
CMD ["python", "your_script.py"]
