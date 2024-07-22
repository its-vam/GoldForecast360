# Use the official Python image from the Docker Hub
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for Streamlit
EXPOSE 8080

# Run the Streamlit app
CMD ["streamlit", "run", "gold_price_app.py", "--server.port", "8080", "--server.enableCORS", "false"]
