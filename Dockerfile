FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy only requirements first (better caching)
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir flask gunicorn

# Copy the rest of your project
COPY . .

# Expose the port Flask will run on
EXPOSE 5000

# Command to run your app
CMD ["npm","start"]

