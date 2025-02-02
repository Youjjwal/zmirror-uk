# Base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the current directory contents
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the correct port
ENV PORT=5000
EXPOSE 5000

# Run the bot
CMD ["python", "app.py"]
