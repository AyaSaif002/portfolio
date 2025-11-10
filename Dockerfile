# Use official Python image
FROM python:3.12.3

# Set working directory
WORKDIR /app

# Copy requirements file if exists
COPY requirements.txt requirement.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port
EXPOSE 5000

# Command to run app
CMD ["python", -w , "app.py"]
